class Subject < ActiveRecord::Base
  belongs_to :klass
  belongs_to :teacher

  attr_accessible :field, :name

  validates :name, :field, :klass, :teacher, :presence => true
end
