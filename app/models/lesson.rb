class Lesson < ActiveRecord::Base
  belongs_to :course
  attr_accessible :image_url, :material, :name, :quiz, :video_url, :video_type, :course_id
  validates :name, :presence => true, :uniqueness => true
end
