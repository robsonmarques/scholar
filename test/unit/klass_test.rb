require 'test_helper'

class KlassTest < ActiveSupport::TestCase

  should have_many(:students)
  should have_many(:schedules).dependent(:destroy)
  should have_many(:subjects).through(:schedules)
  should have_many(:teachers).through(:schedules)

  should accept_nested_attributes_for(:schedules).allow_destroy(true)

  should validate_presence_of(:name)
  should ensure_inclusion_of(:shift).in_array(%w{morning afternoon evening})
  should_not validate_presence_of(:term)
  should_not allow_value("foo").for(:year)
  should allow_value("2013").for(:year)

end
