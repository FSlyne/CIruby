require 'selenium-webdriver'
require 'test/unit'

class SampleTest < Test::Unit::TestCase
  def setup
    @driver=Selenium::WebDriver.for :phantomjs
  end

  def test1
    @driver.navigate.to "https://ruby-fslyne.c9users.io/users/sign_in"
    element = @driver.find_element(:name, 'user[email]')
    element.send_keys "john.smith@email.com"
    element = @driver.find_element(:name, 'user[password]')
    element.send_keys "password"
    element.submit
    notice = @driver.find_element(:class,'notice').text
    assert_match "Signed in",notice

    element = @driver.find_element(:tag_name , "body")
    element = @driver.find_element(:link_text, "Menu")
    element.click
    element = @driver.find_element(:tag_name, "body")
    assert_match "Hello, Rails!!!", element.text    
  end

  def teardown
    @driver.quit
  end
end

