require 'test_helper'

class DashboardTest < ActionDispatch::IntegrationTest

  context "Visit dashboard" do
    setup do
      get dashboard_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'Dashboard', 'Wrong page title or without a title'
    end

    context "with no classes found" do
      setup do
        Klass.destroy_all
        get dashboard_path
      end

      should "show 'welcome' message" do
        assert_select 'h3', 'Welcome to Scholar', 'Page without welcome message'
      end

      should "show a starter link" do
        assert_select 'a', 'New Teacher', 'Page without link to follow'
      end
    end

    context "with classes found" do
      should "show 'classes' tab filter" do
        assert_select 'a', 'Classes', 'Page without tab Classes'
      end

      should "show 'teachers' tab filter" do
        assert_select 'a', 'Teachers', 'Page without tab Teachers'
      end

      should "list students" do
        assert_select 'table tbody tr', true, 'Page without tabular data'
      end
    end
  end
end

