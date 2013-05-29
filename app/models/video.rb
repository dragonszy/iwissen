class Video < ActiveRecord::Base
  belongs_to :unit
  attr_accessible :material, :name
end
