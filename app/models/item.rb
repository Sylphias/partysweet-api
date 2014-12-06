class Item < ActiveRecord::Base
  has_many :resources
  has_many :parties, through: :resources, dependent: :destroy
end
