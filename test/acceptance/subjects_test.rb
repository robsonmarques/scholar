require 'test_helper'

class SubjectTest < ActionDispatch::IntegrationTest

  context "Visit subjects index" do
    setup do
      get subjects_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'Subjects', 'Wrong page title or without a title'
    end

    should "show 'new subject' button" do
      assert_select 'a', 'New Subject', 'Page without button New Subject'
    end

    context "with no subjects found" do
      should "show 'not found' message" do
        Subject.destroy_all
        get subjects_path
        assert_select 'h3', 'Subjects not found', 'Page without not found message'
      end
    end

    context "with subjects found" do
      should "list all subjects" do
        assert_select 'table tbody tr', true, 'Page without tabular data'
      end
    end
  end

  context "Visit subject show" do
    setup do
      get subject_path(subjects(:one))
    end

    should "show the subject name on title" do
      assert_select 'h2', subjects(:one).name, 'Page title is not subject name or empty'
    end

    should "show 'edit subject' button" do
      assert_select 'a', 'Edit Subject', 'Page without button Edit Subject'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new subject' button" do
      assert_select 'a', 'New Subject', 'Page without button New Subject'
    end

    should "list all subject attributes" do
      assert_select 'ul li', true, 'Page without attributes list'
    end
  end

  context "Visit subject new" do
    setup do
      get new_subject_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'New Subject', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show a form to input new subject" do
      assert_select 'form', true, 'Page without form'
    end
  end

  context "Visit subject edit" do
    setup do
      get edit_subject_path(subjects(:one))
    end

    should "show the correct page title" do
      assert_select 'h2', 'Edit Subject', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new subject' button" do
      assert_select 'a', 'New Subject', 'Page without button New Subject'
    end

    should "show a form to edit subject" do
      assert_select 'form', true, 'Page without form'
    end
  end
end
