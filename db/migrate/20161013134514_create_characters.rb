class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name, not_null: true
      t.text :img_url
      t.text :quote
      t.text :bio
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
