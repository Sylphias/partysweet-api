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
        desc "create a user"
        params do
          requires :name,type: String, desc: "User's name"
          requires :number, type: Integer, desc: "User's number"
        end
        post '/' do
          User.create(name: params[:name], number: params[:number])
        end
    end
  end
end