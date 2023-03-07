class CreateCharacterCards < ActiveRecord::Migration[7.0]
  def change
    create_table :character_cards do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :character_id
      t.string :name
      t.string :birthday
      t.string :location
      t.string :fav_food
      t.string :fave_colour
      t.string :image
      t.boolean :protected

      t.timestamps
    end
  end
end
