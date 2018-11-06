class User < ApplicationRecord
    
  has_secure_password
  has_many :messages
  has_and_belongs_to_many :instruments, :join_table => :user_instruments 
  has_and_belongs_to_many :genres, :join_table => :user_genres  
  has_and_belongs_to_many :bands 
  has_and_belongs_to_many :events
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

  def self.filter_by(params)
    all_by_city(params[:city]).all_by_genre(params[:genre])
  end

  def self.all_by_city(city)
    return self.all unless city
    where(city: city)
  end

  def self.all_by_genre(genre)
    return self.all unless genre
    joins(:genres).where(genres: { name: genre })
  end
end
