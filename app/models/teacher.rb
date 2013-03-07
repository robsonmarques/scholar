class Teacher < ActiveRecord::Base
  has_many :schedules, :dependent => :destroy
  has_many :subjects, :through => :schedules
  has_many :klasses, :through => :schedules

  attr_accessible :age, :email, :gender, :name

  validates :name, :presence => true
  validates :age, :inclusion => 1..100
  validates :gender, :inclusion => %w{male female}
  validates :email, :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
