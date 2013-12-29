class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  has_many :comments
end
