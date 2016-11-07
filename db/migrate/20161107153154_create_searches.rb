class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :song_title
      t.string :album_title
      t.string :artist_name
      t.timestamps
    end
  end
end
