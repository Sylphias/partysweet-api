class Resource < ActiveRecord::Base
  belongs_to :party
  belongs_to :item
end
