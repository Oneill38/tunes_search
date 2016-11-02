class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :preview_url
      t.integer :track_num
      t.references :album
      
      t.timestamps
    end
  end
end
