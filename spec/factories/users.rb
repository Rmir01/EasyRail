FactoryBot.define do
  factory :user do
    name { "test" }
    surname { "ing" }
    email { "test@ing.it" }
    password { "password" }
    admin { false } 

    # Admin
    trait :admin do
      admin { true }
      email { "admin@ing.it" } 
    end
  end
end
