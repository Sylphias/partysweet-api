module Resources
  module V1
    class Base < Grape::API
      mount Resources::V1::Users
      mount Resources::V1::Events
    end
  end
end
