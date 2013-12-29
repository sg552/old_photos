class User < ActiveRecord::Base
  has_many :photos
  has_many :comments
  has_many :members
  has_many :organizations, :through => :members
end
