require 'test_helper'

class TeacherTest < ActionDispatch::IntegrationTest

  context "Visit teachers index" do
    setup do
      get teachers_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'Teachers', 'Wrong page title or without a title'
    end

    should "show 'new teacher' button" do
      assert_select 'a', 'New Teacher', 'Page without button New Teacher'
    end

    context "with no teachers found" do
      should "show 'not found' message" do
        Teacher.destroy_all
        get teachers_path
        assert_select 'h3', 'Teachers not found', 'Page without not found message'
      end
    end

    context "with teachers found" do
      should "list all teachers" do
        assert_select 'table tbody tr', true, 'Page without tabular data'
      end
    end
  end

  context "Visit teacher show" do
    setup do
      get teacher_path(teachers(:one))
    end

    should "show the teacher name on title" do
      assert_select 'h2', teachers(:one).name, 'Page title is not teacher name or empty'
    end

    should "show 'edit teacher' button" do
      assert_select 'a', 'Edit Teacher', 'Page without button Edit Teacher'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new teacher' button" do
      assert_select 'a', 'New Teacher', 'Page without button New Teacher'
    end

    should "list all teacher attributes" do
      assert_select 'ul li', true, 'Page without attributes list'
    end
  end

  context "Visit teacher new" do
    setup do
      get new_teacher_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'New Teacher', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show a form to input new teacher" do
      assert_select 'form', true, 'Page without form'
    end
  end

  context "Visit teacher edit" do
    setup do
      get edit_teacher_path(teachers(:one))
    end

    should "show the correct page title" do
      assert_select 'h2', 'Edit Teacher', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new teacher' button" do
      assert_select 'a', 'New Teacher', 'Page without button New Teacher'
    end

    should "show a form to edit teacher" do
      assert_select 'form', true, 'Page without form'
    end
  end
end
