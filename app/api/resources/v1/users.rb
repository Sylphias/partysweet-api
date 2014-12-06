module Resources
  module V1
    class Users < Grape::API
      include Resources::V1::Defaults
        resources :users do 
        desc "get a list of users"
          get '/', jbuilder: 'v1/users/index.jbuilder' do
            @user = User.all
          end
        end

    end
  end
end