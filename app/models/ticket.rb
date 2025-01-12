class Ticket < ApplicationRecord
  self.table_name = "tickets"
  belongs_to :user, foreign_key: "email", primary_key: "email"
end
