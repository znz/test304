class HomeController < ApplicationController
  def index
    request.headers.each do |key, value|
      puts "#{key}: #{value}" if /\AHTTP_/ =~ key
    end
  end

  def redirect
    redirect_to action: :index
  end
end
