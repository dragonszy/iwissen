class Unit < ActiveRecord::Base
  belongs_to :course
  has_many :lessons
  attr_accessible :name, :course_id
  validates :name, :presence => true
end
