class Klass < ActiveRecord::Base
  has_many :students
  has_many :subjects, :dependent => :destroy
  has_many :teachers, :through => :subjects

  attr_accessible :name, :shift, :term, :year

  validates :name, :presence => true
  validates :shift, :inclusion => %w{morning afternoon evening}, :allow_blank => true
  validates :year, :format => /(19|20)\d{2}/
end
