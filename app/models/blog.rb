class Blog < ActiveRecord::Base
  attr_accessible :contents, :title
  belongs_to :band
  
  validates :contents, :presence => true
  validates :title, :presence => true, :length => { :maximum => 255}
end
