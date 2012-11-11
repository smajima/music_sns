class Photo < ActiveRecord::Base
  attr_accessible :explanation, :file_name, :title
  has_one :album
end
