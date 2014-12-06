class AddImageToParty < ActiveRecord::Migration
  def change
    add_column :parties, :image, :text
  end
end
