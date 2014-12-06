class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.boolean :paid
      t.float :price

      t.timestamps
    end
  end
end
