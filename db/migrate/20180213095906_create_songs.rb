class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_artist
      t.string :song_name
      t.string :song_link
      t.string :song_artwork

      t.timestamps
    end
  end
end
