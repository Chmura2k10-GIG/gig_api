class UserGenre < ApplicationRecord
  belongs_to :User
  belongs_to :Genre
end
