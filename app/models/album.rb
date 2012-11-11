class Album < ActiveRecord::Base
  attr_accessible :explanation, :title
  
  validates :title, :presence => true, :length => {:maximum => 255}
  has_many :photos
end
