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
          required :name,type: integer, desc: "User's name"
          required :number, type: integer, desc: "User's number"
        end
        post '/' do
          User.create(name: params[:name], number: params[:number])
        end
    end
  end
end