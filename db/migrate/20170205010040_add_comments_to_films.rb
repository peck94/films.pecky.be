class AddCommentsToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :comments, :string
  end
end
