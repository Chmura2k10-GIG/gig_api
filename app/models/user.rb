class User < ApplicationRecord
    
  has_secure_password
  has_many :messages
  has_many :instruments, through: :user_instruments
  has_many :genres, through: :user_genres
  has_many :bands, through: :user_bands
  has_many :events,  through: :user_events
  has_many :tracks
  
  validates_length_of       :password, maximum: 72, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  before_validation { 
    (self.email = self.email.to_s.downcase) && (self.login = self.login.to_s.downcase) 
  }

  validates_presence_of     :email
  validates_presence_of     :login
  validates_uniqueness_of   :email
  validates_uniqueness_of   :login

  def can_modify_user?(user_id)
    role == 'admin' || id.to_s == user_id.to_s
  end

  def is_admin?
    role == 'admin'
  end

end
