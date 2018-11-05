class UserMusicGenre < ApplicationRecord
  belongs_to :User
  belongs_to :MusicGenre
end
