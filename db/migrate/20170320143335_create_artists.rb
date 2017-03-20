class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :spotify_id
      t.string :external_urls
      t.text :genres, array: true, default: []
      t.string :href
      t.string :name

      t.timestamps
    end
  end
end
