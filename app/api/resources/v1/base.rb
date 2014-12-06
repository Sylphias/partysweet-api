require 'grape-swagger'

module Resources
  module V1
    class Base < Grape::API
      mount Resources::V1::Users
      mount Resources::V1::Parties
      add_swagger_documentation(base_path: "/api")

    end
  end
end
