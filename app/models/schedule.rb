class Schedule < ActiveRecord::Base
  belongs_to :klass
  belongs_to :subject
  belongs_to :teacher

  validates :klass, :subject, :teacher, :presence => true
end
