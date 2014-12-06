module Resources
  module V1
    class Parties < Grape::API
      include Resources::V1::Defaults
      resources :parties do 
        desc "get a list of parties"
          get '/', jbuilder: 'v1/parties/index.jbuilder' do
            @parties = Party.all
        end
      end

    #class starts here 
    end
  end
end