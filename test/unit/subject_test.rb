require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

  should have_many(:schedules).dependent(:destroy)
  should have_many(:klasses).through(:schedules)
  should have_many(:teachers).through(:schedules)

  should validate_presence_of(:name)
  should validate_presence_of(:area)
  should_not validate_presence_of(:content)

  should allow_mass_assignment_of(:name)
  should allow_mass_assignment_of(:area)
  should allow_mass_assignment_of(:content)

end
