class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :timeoutable

  has_many :searches, foreign_key: "email", primary_key: "email"
  has_many :tickets, foreign_key: "email", primary_key: "uemail"
end
