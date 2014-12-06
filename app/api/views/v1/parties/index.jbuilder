json.set! :parties do
  json.array! @parties.each do |party|
    json.id party.id
    json.title party.title
    json.description party.description
    json.date party.date
    json.time party.time
    json.location party.location
  json.set! :party_invitations do
    json.array! party.invitations.each do |i|
      json.price i.price
      json.paid i.paid
      json.host i.host
      json.user_id i.user_id
      json.party_id i.party_id
    end
  end
  json.set! :party_users do
    json.array! party.users.each do |u|
      json.id u.id
      json.name u.name
      json.number u.number
    end
  end
  json.set! :party_resources do
    json.array! party.resources.each do |r|
      json.quantity r.quantity 
      json.item_id r.item_id 
      json.party_id r.party_id
    end
  end
  json.set! :party_items do
    json.array! party.items.each do |pi|
      json.id pi.id
      json.name pi.name 
      json.price pi.price
    end
  end
end
end
