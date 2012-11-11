class MemberBulettinBorad < ActiveRecord::Base
  attr_accessible :name
  has_many :member_posts
  
  validates :name, :presence => true, :length => { :maximum => 255}
end
