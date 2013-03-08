require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase

  should belong_to(:klass)
  should belong_to(:subject)
  should belong_to(:teacher)

  should validate_presence_of(:subject)
  should validate_presence_of(:teacher)
  should_not validate_presence_of(:klass)

  should allow_mass_assignment_of(:subject_id)
  should allow_mass_assignment_of(:teacher_id)

end
