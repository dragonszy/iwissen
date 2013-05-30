class Lesson < ActiveRecord::Base
  belongs_to :unit
  attr_accessible :image_url, :material, :name, :quiz, :video_url, :unit_id
end
