class BandMaster < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_one :band
  has_one :profile, :as => :prof
  
end
