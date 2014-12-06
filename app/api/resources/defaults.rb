module Resources
  module Defaults
    extend ActiveSupport::Concern
    
    included do
      default_format :json
      formatter :json, Grape::Formatter::Jbuilder
      formatter :xml, Grape::Formatter::Jbuilder

    end
  end
end
