# -*- coding: utf-8 -*-
require 'rails_helper'

describe 'Home pages', js: true do
  2.times do |n|
    it "redirect (#{n})" do
      visit home_redirect_path
      expect(page.status_code).to eq(200)
    end
  end
end
