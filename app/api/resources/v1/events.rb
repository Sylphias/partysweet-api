module Resources
  module V1
    class Events < Grape::API
      include Resources::V1::Defaults
      resources :events do 
        desc "get a list of events"
          get '/', jbuilder: 'v1/users/index.jbuilder' do
            @events = Event.all
        end
      end

    #class starts here 
    end
  end
end