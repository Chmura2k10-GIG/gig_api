class CreateUserMusicGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :user_music_genres do |t|
      t.references :user, foreign_key: true
      t.references :music_genre, foreign_key: true

      t.timestamps
    end
  end
end
