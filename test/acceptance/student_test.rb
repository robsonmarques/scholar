require 'test_helper'

class StudentTest < ActionDispatch::IntegrationTest

  context "Visit students index" do
    setup do
      get students_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'Students', 'Wrong page title or without a title'
    end

    should "show 'new student' button" do
      assert_select 'a', 'New Student', 'Page without button New Student'
    end

    context "with no students found" do
      should "show 'not found' message" do
        Student.destroy_all
        get students_path
        assert_select 'h3', 'Students not found', 'Page without not found message'
      end
    end

    context "with students found" do
      should "list all students" do
        assert_select 'table tbody tr', true, 'Page without tabular data'
      end
    end
  end

  context "Visit student show" do
    setup do
      get student_path(students(:one))
    end

    should "show the student name on title" do
      assert_select 'h2', students(:one).name, 'Page title is not student name or empty'
    end

    should "show 'edit student' button" do
      assert_select 'a', 'Edit Student', 'Page without button Edit Student'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new student' button" do
      assert_select 'a', 'New Student', 'Page without button New Student'
    end

    should "list all student attributes" do
      assert_select 'ul li', true, 'Page without attributes list'
    end
  end

  context "Visit student new" do
    setup do
      get new_student_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'New Student', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show a form to input new student" do
      assert_select 'form', true, 'Page without form'
    end
  end

  context "Visit student edit" do
    setup do
      get edit_student_path(students(:one))
    end

    should "show the correct page title" do
      assert_select 'h2', 'Edit Student', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new student' button" do
      assert_select 'a', 'New Student', 'Page without button New Student'
    end

    should "show a form to edit student" do
      assert_select 'form', true, 'Page without form'
    end
  end
end
