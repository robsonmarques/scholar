require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  should belong_to(:klass)

  should validate_presence_of(:name)
  should validate_presence_of(:klass)
  should ensure_inclusion_of(:age).in_range(1..100)
  should ensure_inclusion_of(:gender).in_array(%w{male female})
  should_not allow_value("foo").for(:email)
  should allow_value("foo@bar.com").for(:email)

  should allow_mass_assignment_of(:name)
  should allow_mass_assignment_of(:age)
  should allow_mass_assignment_of(:gender)
  should allow_mass_assignment_of(:email)
  should allow_mass_assignment_of(:klass_id)

end
