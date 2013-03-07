require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  should validate_presence_of(:name)
  should validate_presence_of(:class)
  should ensure_inclusion_of(:age).in_range(1..100)
  should allow_value("male", "female").for(:gender)
  should_not allow_value("foo").for(:email)
  should allow_value("foo@bar.com").for(:email)
  should belong_to(:class)

end