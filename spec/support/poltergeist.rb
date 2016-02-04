require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  options = {
    timeout: 120,
  }
  Capybara::Poltergeist::Driver.new(app, options)
end
