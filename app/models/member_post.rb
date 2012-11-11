class MemberPost < ActiveRecord::Base
  attr_accessible :contents, :title
  
  belongs_to :member_bulettin_board
  validates :contents, :presence => true
end
