FactoryBot.define do
  factory :travel do
    cod { 1200 }
    part { "Roma Termini" }
    dest { "Milano Centrale" }
    hpar { "16:00" }
    harr { "18:30" }
    pe { 30 }
    pp { 40 }
  end
end
