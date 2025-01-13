class Travel < ActiveRecord::Base
  self.table_name = "travels"
  belongs_to :train, foreign_key: "cod", primary_key: "id"
end
