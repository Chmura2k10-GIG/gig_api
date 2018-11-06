class Band < ApplicationRecord
  has_many :users, through: :user_bands
end
