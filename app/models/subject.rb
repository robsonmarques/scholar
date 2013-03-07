class Subject < ActiveRecord::Base
  belongs_to :klass
  belongs_to :teacher

  attr_accessible :name

  validates :name, :klass, :teacher, :presence => true
end
