require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         'Twitter clone'
    assert_equal full_title("Help"), 'Help | Twitter clone'
    assert_equal full_title("About"), 'About | Twitter clone'
    assert_equal full_title("Contact"), 'Contact | Twitter clone'
  end
end