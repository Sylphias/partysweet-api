class Party < ActiveRecord::Base
  has_many :users, through: :invitations, dependent: :destroy
  has_many :invitations
  has_many :items, through: :resources, dependent: :destroy
  has_many :resources
end
