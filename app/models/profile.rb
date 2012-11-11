class Profile < ActiveRecord::Base
  attr_accessible :birthday, :gender, :introduction, :nick_name
  
  belongs_to :prof, :polymorphic => true
  
  validates :nick_name, :presence => true, :length => { :maximum => 255}
end
