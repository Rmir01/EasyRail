class Search < ApplicationRecord
  self.table_name = "searches"
  belongs_to :user, foreign_key: "email", primary_key: "email"
  validates :departure_station, :arrival_station, presence: true
end
