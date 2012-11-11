class BulettinBoard < ActiveRecord::Base
  attr_accessible :name
  
  has_many :posts
  
  validates :name, :presence => true, :length => {:maximum => 255}
end
