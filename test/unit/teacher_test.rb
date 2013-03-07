require 'test_helper'

class TeacherTest < ActiveSupport::TestCase

  should have_many(:subjects)
  should have_many(:klasses).through(:subjects)

  should validate_presence_of(:name)
  should ensure_inclusion_of(:age).in_range(1..100)
  should ensure_inclusion_of(:gender).in_array(%w{male female})
  should_not allow_value("foo").for(:email)
  should allow_value("foo@bar.com").for(:email)

end
