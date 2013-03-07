class Klass < ActiveRecord::Base
  has_many :students
  has_many :schedules, :dependent => :destroy
  has_many :subjects, :through => :schedules
  has_many :teachers, :through => :schedules

  attr_accessible :name, :shift, :term, :year

  validates :name, :presence => true
  validates :shift, :inclusion => %w{morning afternoon evening}, :allow_blank => true
  validates :year, :format => /(19|20)\d{2}/

  accepts_nested_attributes_for :schedules, :reject_if => :all_blank, :allow_destroy => true
end
