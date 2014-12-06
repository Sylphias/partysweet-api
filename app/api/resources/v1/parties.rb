module Resources
  module V1
    class Parties < Grape::API
      include Resources::V1::Defaults
      resources :parties do 
        desc "get a list of parties"
          get '/', jbuilder: 'v1/parties/index.jbuilder' do
            @parties = Party.all
        end
        desc "Add a new party with all the information" 
          post '/' do
            party = params[:party]
            party_invitation = params[:party][:party_invitation]
            party_users = params[:party][:party_user]
            party_items = params[:party][:party_items]
            party_resources = params[:party][:party_resources]
            p = Party.create(
              title: party[:title],
              description: party[:description],
              date: party[:date],
              time: party[:time],
              location: party[:location],
              price: party[:price],
              image: party[:image]
              )
            party_users.each do |u|
              user = p.users.create(
                name: u[:name], 
                number: u[:number],
                image: u[:image]
              )
              inv = Invitation.where(user_id: user.id, party_id: p.id).first
              inv.host = u[:host]
              inv.update
            end
            party_items.each do |i|
              item = p.items.create(
                name: i[:name],
                price: i[:price]
                )
              res = Resource.where(item_id: item.id, party_id: p.id).first
              res.quantity = i[:quantity]
              res.update
            end
          end
        desc "Update invitee status"
          params do
            requires :user_id, type: Integer, desc: "User Id"
            requires :party_id, type: Integer, desc: "Party Id"
            requires :paid, type: Boolean, desc: "User's paid status"
          end
          put '/update_invite' do 
            inv = Invitation.where(user_id: params[:user_id], party_id: params[:party_id]).first
            inv.host = params[:paid]
            inv.update
          end

      end

    #class starts here 
    end
  end
end