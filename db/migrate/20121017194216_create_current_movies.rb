class CreateCurrentMovies < ActiveRecord::Migration
  def change
    create_table :current_movies do |t|
      t.string :title
      t.string :description
      t.string :director
      t.string :actors
      t.string :image_url
      t.string :language
      t.integer :votes
      t.timestamps
    end
  end
end
