require 'test_helper'

class WelcomeTest < ActionDispatch::IntegrationTest

  context "Visit Scholar project" do
    setup do
      get root_path
    end

    should "show the welcome on title" do
      assert_select 'h2', 'Welcome', 'Wrong page title or without a title'
    end

    should "show the 'welcome' message" do
      assert_select 'h3', 'Welcome to Scholar', 'Page without welcome message'
    end

    should "show at least a starter link" do
      assert_select 'a', 'New Teacher', 'Page without link to follow'
    end

  end
end

