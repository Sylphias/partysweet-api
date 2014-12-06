class AddPartyIdAndItemIdToResource < ActiveRecord::Migration
  def change
    add_column :resources, :party_id, :integer
    add_column :resources, :item_id, :integer
  end
end
