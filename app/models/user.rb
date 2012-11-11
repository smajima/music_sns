class User < ActiveRecord::Base
  
  attr_accessible :e_mail, :password, :status, :username, :e_mail_confirmation
  
  has_many :band_masters
  has_many :band_members
  
  validates :username, :presence => true, :length => {:in => 6..12}, :format => { :with => Regex::USER_NAME}
  validates :username, :uniqueness => true
  validates :password, :presence => true, :length => {:in => 6..12}, :format => { :with => Regex::PASSWORD}, :confirmation => true
  validates :e_mail, :presence => true, :format => { :with => Regex::E_MAIL }, :confirmation => true
end
