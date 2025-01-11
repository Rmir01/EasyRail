class Ticket < ApplicationRecord
  belongs_to :user, foreign_key: "uemail", primary_key: "email"
end
