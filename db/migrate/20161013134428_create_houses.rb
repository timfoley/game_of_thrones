class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.text :words
      t.string :seat
      t.string :region
      t.string :string
      t.text :img_url

      t.timestamps
    end
  end
end
