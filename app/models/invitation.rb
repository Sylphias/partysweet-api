class Invitation < ActiveRecord::Base
  belongs_to :party
  belongs_to :user
end
