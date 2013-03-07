class Subject < ActiveRecord::Base
  has_many :schedules, :dependent => :destroy
  has_many :klasses, :through => :schedules
  has_many :teachers, :through => :schedules

  attr_accessible :name, :area, :content

  validates :name, :area, :presence => true
end
