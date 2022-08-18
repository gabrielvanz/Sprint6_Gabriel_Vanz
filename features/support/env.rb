require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    browser = ENV.fetch('browser','chrome').to_sym
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" =>
        {"args" => ["--ignore-ssl-errors","--ignore-certificate-errors","--disable-popup-blocking",
            "--disable-gpu","--disable-translate","--incognito","--no-sandbox","--acceptInsecureCerts=true",
            "--windows-size=1120,835", "--disable-impl-size-painting", "--debug_level=3"]})
    if ENV['HEADLESS']
        caps['goog:chromeOptions']['args'] << '--headless'
        caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
    end
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 90
    
    Capybara::Selenium::Driver.new(app, browser: browser, capabilities: caps, http_client: client)
end

Capybara.configure do |config|
    config.default_driver = :my_chrome
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10
