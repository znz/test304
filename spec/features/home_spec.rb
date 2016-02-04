# -*- coding: utf-8 -*-
require 'rails_helper'

describe 'Home pages', js: true do
  it do
    visit home_redirect_path
    expect(page.status_code).to eq(200)
  end
end
