require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase

  should belong_to(:klass)
  should belong_to(:subject)
  should belong_to(:teacher)

  should validate_presence_of(:klass)
  should validate_presence_of(:subject)
  should validate_presence_of(:teacher)

end
