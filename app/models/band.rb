class Band < ActiveRecord::Base
  attr_accessible :explanation, :name, :type
  
  validates :name, :presence => true, :length => { :maximum => 255}
  
  has_one :band_master
  has_one :album
  has_one :blog
  has_one :bulletin_board
  has_one :member_bulettin_board
  has_many :band_members
  belongs_to :band_master
end
