class BandMember < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :band
  
  has_one :profile, :as => :prof
end
