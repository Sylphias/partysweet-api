class AddHostToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :host, :boolean
  end
end
