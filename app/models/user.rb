class User < ActiveRecord::Base
  has_many :invitations
  has_many :parties, through: :invitations, dependent: :destroy
end
