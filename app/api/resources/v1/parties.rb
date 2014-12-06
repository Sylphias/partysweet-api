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
              price: party[:price]
              )
            party_users.each do |u|
              user = p.users.create(
                name: u[:name], 
                number: u[:number]
              )
              inv = Invitation.where(user_id: user.id, party_id: p.id).first
              inv.host = u[:host]
              inv.save
            end
            party_items.each do |i|
              item = p.items.create(
                name: i[:name],
                price: i[:price]
                )
              res = Resource.where(item_id: item.id, party_id: p.id).first
              res.quantity = i[:quantity]
              res.save
            end

          end

      end

    #class starts here 
    end
  end
end