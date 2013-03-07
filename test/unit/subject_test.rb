require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

  should belong_to(:klass)
  should belong_to(:teacher)

  should validate_presence_of(:name)
  should validate_presence_of(:field)
  should validate_presence_of(:klass)
  should validate_presence_of(:teacher)

end
