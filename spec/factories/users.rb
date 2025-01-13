FactoryBot.define do
  factory :user do
    name { "test" }
    surname { "ing" }
    email { "test@ing.it" }
    password { "password" }
  end
end
