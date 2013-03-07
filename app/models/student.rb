class Student < ActiveRecord::Base
  belongs_to :class

  attr_accessible :age, :email, :gender, :name

  validates :name, :class, :presence => true
  validates :age, :inclusion => 1..100
  validates :gender, :inclusion => %w{male female}
  validates :email, :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
