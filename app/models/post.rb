class Post < ActiveRecord::Base
  attr_accessible :contents, :title
  
  belongs_to :bulettin_board
  validates :contents, :presence => true
end
