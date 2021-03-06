class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :accomodate
      t.integer :bedroom
      t.integer :bathroom
      t.text :description
      t.string :address
      t.boolean :is_tv
      t.boolean :is_kitchen
      t.boolean :is_air
      t.boolean :is_heating
      t.boolean :is_internet
      t.integer :price
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
