class Organization < ActiveRecord::Base
  has_many :members
  has_many :photos
end
