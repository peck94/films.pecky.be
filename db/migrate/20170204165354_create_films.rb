class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.text :titel
      t.text :synopsis
      t.boolean :gezien
      t.integer :rating
      t.text :image
      t.text :imdb
      t.text :trailer

      t.timestamps
    end
  end
end
