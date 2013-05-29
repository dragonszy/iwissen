class Unit < ActiveRecord::Base
  belongs_to :course
  has_many :videos
  attr_accessible :name
  validates :name, :presence => true
end
