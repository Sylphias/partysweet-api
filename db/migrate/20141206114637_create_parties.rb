class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
