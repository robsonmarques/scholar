require 'test_helper'

class KlassTest < ActiveSupport::TestCase

  should have_many(:students)
  should have_many(:subjects).dependent(:destroy)
  should have_many(:teachers).through(:subjects)

  should accept_nested_attributes_for(:subjects).allow_destroy(true)

  should validate_presence_of(:name)
  should allow_value("morning", "afternoon", "evening", "").for(:shift)
  should_not allow_value("foo").for(:year)
  should allow_value("2013").for(:year)

end
