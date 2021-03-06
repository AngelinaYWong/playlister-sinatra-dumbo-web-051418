class CreateSongGenres < ActiveRecord::Migration
  def change
    create_join_table :songs, :genres, table_name: :song_genres do |t|
      t.index :song_id
      t.index :genre_id
    end
  end
end
