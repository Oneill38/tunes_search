class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :art_url
      t.references :artist
      t.timestamps
    end
  end
end
