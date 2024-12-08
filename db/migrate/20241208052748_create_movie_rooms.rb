class CreateMovieRooms < ActiveRecord::Migration[7.2]
  def change
    create_table :movie_rooms do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :genre
      t.string :movie_title
      t.string :movie_id
      t.integer :movie_year
      t.string :movie_poster_url

      t.timestamps
    end
  end
end
