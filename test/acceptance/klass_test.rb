require 'test_helper'

class KlassTest < ActionDispatch::IntegrationTest

  # Visit Classes index:
  # see the list of all classes
  # click on the New Class button
  # select one class to edit
  # mark one class to delete

  context "Visit classes index" do
    setup do
      get klasses_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'Classes', 'Wrong page title or without a title'
    end

    should "show 'new class' button" do
      assert_select 'a', 'New Class', 'Page without button New Class'
    end

    context "with no classes found" do
      should "show 'not found' message" do
        Klass.destroy_all
        get klasses_path
        assert_select 'h3', 'Classes not found', 'Page without not found message'
      end
    end

    context "with classes found" do
      should "list all classes" do
        assert_select 'table tbody tr', true, 'Page without tabular data'
      end
    end
  end

  context "Visit class show" do
    setup do
      get klass_path(klasses(:one))
    end

    should "show the class name on title" do
      assert_select 'h2', klasses(:one).name, 'Page title is not class name or empty'
    end

    should "show 'edit class' button" do
      assert_select 'a', 'Edit Class', 'Page without button Edit Class'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new class' button" do
      assert_select 'a', 'New Class', 'Page without button New Class'
    end

    should "list all class attributes" do
      assert_select 'ul li', true, 'Page without attributes list'
    end
  end

  context "Visit class new" do
    setup do
      get new_klass_path
    end

    should "show the correct page title" do
      assert_select 'h2', 'New Class', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show a form to input new class" do
      assert_select 'form', true, 'Page without form'
    end
  end

  context "Visit class edit" do
    setup do
      get edit_klass_path(klasses(:one))
    end

    should "show the correct page title" do
      assert_select 'h2', 'Edit Class', 'Wrong page title or without a title'
    end

    should "show 'list all' button" do
      assert_select 'a', 'List All', 'Page without button List All'
    end

    should "show 'new class' button" do
      assert_select 'a', 'New Class', 'Page without button New Class'
    end

    should "show a form to edit class" do
      assert_select 'form', true, 'Page without form'
    end
  end
end
