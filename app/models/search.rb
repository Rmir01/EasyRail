class Search < ApplicationRecord
  belongs_to :user, foreign_key: "email", primary_key: "email"
  validates :departure_station, :arrival_station, presence: true
end
