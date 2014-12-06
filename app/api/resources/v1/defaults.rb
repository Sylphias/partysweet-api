module Resources
  module V1
    module Defaults
      extend ActiveSupport::Concern
      included do
        include Resources::Defaults
        version ['v1'], using: :accept_version_header, vendor: 'plus', cascade: true
      end
    end
  end
end
