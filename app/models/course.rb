class Course < ActiveRecord::Base
  belongs_to :user
  has_many :units
  attr_accessible :description, :name, :teacher, :title, :user_id
  validates :title, :name, :presence => true
  validates :title, :uniqueness => true
end
