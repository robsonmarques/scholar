class Schedule < ActiveRecord::Base
  belongs_to :klass
  belongs_to :subject
  belongs_to :teacher

  attr_accessible :subject_id, :teacher_id

  validates :subject, :teacher, :presence => true
end
