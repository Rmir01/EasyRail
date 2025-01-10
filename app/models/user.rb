class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :timeoutable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  
  has_many :searches, foreign_key: 'email', primary_key: 'email'
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      if auth.info.name
        name_parts = auth.info.name.split(' ', 2) # Dividi il nome in due parti
        user.name = name_parts[0] # Prima parte come nome
        user.surname = name_parts[1] || '' # Seconda parte come cognome (o vuoto se manca)
      end
    end
  end
end
