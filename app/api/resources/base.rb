module Resources
  class Base < Grape::API
    mount Resources::V1::Base
  end
end