FactoryBot.define do
  factory :ticket do
    pnr { "THEPNR" }
    email { "test@ing.it" }
    cod { 1200 }
    part { "Roma Termini" }
    dest { "Milano Centrale" }
    hpar { "16:00" }
    harr { "18:30" }
    date { "2025-03-03" }
    pass { 1 }
    price { 30 }
  end
end
