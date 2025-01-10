# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

more_trains = [
  # Treni sud->nord
  {
  id: 1000,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "05:00",
  hf1: "06:00",
  hf2: "07:00",
  hf3: "08:00",
  hf4: "09:00",
  hf5: "10:00"
  },
  {
  id: 1002,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "07:00",
  hf1: "08:00",
  hf2: "09:00",
  hf3: "10:00",
  hf4: "11:00",
  hf5: "12:00"
  },
  {
  id: 1004,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "09:00",
  hf1: "10:00",
  hf2: "11:00",
  hf3: "12:00",
  hf4: "13:00",
  hf5: "14:00"
  },
  {
  id: 1006,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "11:00",
  hf1: "12:00",
  hf2: "13:00",
  hf3: "14:00",
  hf4: "15:00",
  hf5: "16:00"
  },
  {
  id: 1008,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "13:00",
  hf1: "14:00",
  hf2: "15:00",
  hf3: "16:00",
  hf4: "17:00",
  hf5: "18:00"
  },
  {
  id: 1010,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "15:00",
  hf1: "16:00",
  hf2: "17:00",
  hf3: "18:00",
  hf4: "19:00",
  hf5: "20:00"
  },
  {
  id: 1012,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "17:00",
  hf1: "18:00",
  hf2: "19:00",
  hf3: "20:00",
  hf4: "21:00",
  hf5: "22:00"
  },
  {
  id: 1014,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: "Milano Centrale",
  f5: "Torino Porta Nuova",
  hf0: "19:00",
  hf1: "20:00",
  hf2: "21:00",
  hf3: "22:00",
  hf4: "23:00",
  hf5: "23:59"
  },

  # /*Treni sud->nord - Venezia
  {
  id: 1050,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "06:00",
  hf1: "07:00",
  hf2: "08:00",
  hf3: "09:00",
  hf4: nil,
  hf5: "11:00"
  },
  {
  id: 1052,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "08:00",
  hf1: "09:00",
  hf2: "10:00",
  hf3: "11:00",
  hf4: nil,
  hf5: "13:00"
  },
  {
  id: 1054,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "10:00",
  hf1: "11:00",
  hf2: "12:00",
  hf3: "13:00",
  hf4: nil,
  hf5: "15:00"
  },
  {
  id: 1056,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "12:00",
  hf1: "13:00",
  hf2: "14:00",
  hf3: "15:00",
  hf4: nil,
  hf5: "17:00"
  },
  {
  id: 1058,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "14:00",
  hf1: "15:00",
  hf2: "16:00",
  hf3: "17:00",
  hf4: nil,
  hf5: "19:00"
  },
  {
  id: 1060,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "16:00",
  hf1: "17:00",
  hf2: "18:00",
  hf3: "19:00",
  hf4: nil,
  hf5: "21:00"
  },
  {
  id: 1062,
  f0: "Napoli Centrale",
  f1: "Roma Termini",
  f2: "Firenze Santa Maria Novella",
  f3: "Bologna Centrale",
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "18:00",
  hf1: "19:00",
  hf2: "20:00",
  hf3: "21:00",
  hf4: nil,
  hf5: "23:00"
  },

  # Treni nord->sud
  {
  id: 1001,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "05:00",
  hf1: "06:00",
  hf2: "07:00",
  hf3: "08:00",
  hf4: "09:00",
  hf5: "10:00"
  },
  {
  id: 1003,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "07:00",
  hf1: "08:00",
  hf2: "09:00",
  hf3: "10:00",
  hf4: "11:00",
  hf5: "12:00"
  },
  {
  id: 1005,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "09:00",
  hf1: "10:00",
  hf2: "11:00",
  hf3: "12:00",
  hf4: "13:00",
  hf5: "14:00"
  },
  {
  id: 1007,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "11:00",
  hf1: "12:00",
  hf2: "13:00",
  hf3: "14:00",
  hf4: "15:00",
  hf5: "16:00"
  },
  {
  id: 1009,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "13:00",
  hf1: "14:00",
  hf2: "15:00",
  hf3: "16:00",
  hf4: "17:00",
  hf5: "18:00"
  },
  {
  id: 1011,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "15:00",
  hf1: "16:00",
  hf2: "17:00",
  hf3: "18:00",
  hf4: "19:00",
  hf5: "20:00"
  },
  {
  id: 1013,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "17:00",
  hf1: "18:00",
  hf2: "19:00",
  hf3: "20:00",
  hf4: "21:00",
  hf5: "22:00"
  },
  {
  id: 1015,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: "Bologna Centrale",
  f3: "Firenze Santa Maria Novella",
  f4: "Roma Termini",
  f5: "Napoli Centrale",
  hf0: "19:00",
  hf1: "20:00",
  hf2: "21:00",
  hf3: "22:00",
  hf4: "23:00",
  hf5: "23:59"
  },

  # Treni nord->sud - Venezia
  {
  id: 1051,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "06:00",
  hf1: "08:00",
  hf2: "09:00",
  hf3: "10:00",
  hf4: nil,
  hf5: "11:00"
  },
  {
  id: 1053,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "08:00",
  hf1: "10:00",
  hf2: "11:00",
  hf3: "12:00",
  hf4: nil,
  hf5: "13:00"
  },
  {
  id: 1055,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "10:00",
  hf1: "12:00",
  hf2: "13:00",
  hf3: "14:00",
  hf4: nil,
  hf5: "15:00"
  },
  {
  id: 1057,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "12:00",
  hf1: "14:00",
  hf2: "15:00",
  hf3: "16:00",
  hf4: nil,
  hf5: "17:00"
  },
  {
  id: 1059,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "14:00",
  hf1: "16:00",
  hf2: "17:00",
  hf3: "18:00",
  hf4: nil,
  hf5: "19:00"
  },
  {
  id: 1061,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "16:00",
  hf1: "18:00",
  hf2: "19:00",
  hf3: "20:00",
  hf4: nil,
  hf5: "21:00"
  },
  {
  id: 1063,
  f0: "Venezia Santa Lucia",
  f1: "Bologna Centrale",
  f2: "Firenze Santa Maria Novella",
  f3: "Roma Termini",
  f4: nil,
  f5: "Napoli Centrale",
  hf0: "18:00",
  hf1: "20:00",
  hf2: "21:00",
  hf3: "22:00",
  hf4: nil,
  hf5: "23:00"
  },

  # Treni ovest->est
  {
  id: 1100,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "06:00",
  hf1: "07:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "09:00"
  },
  {
  id: 1102,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "08:00",
  hf1: "09:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "11:00"
  },
  {
  id: 1104,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "10:00",
  hf1: "11:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "13:00"
  },
  {
  id: 1106,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "12:00",
  hf1: "13:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "15:00"
  },
  {
  id: 1108,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "14:00",
  hf1: "15:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "17:00"
  },
  {
  id: 1110,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "16:00",
  hf1: "17:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "19:00"
  },
  {
  id: 1112,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "18:00",
  hf1: "19:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "21:00"
  },
  {
  id: 1114,
  f0: "Torino Porta Nuova",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Venezia Santa Lucia",
  hf0: "20:00",
  hf1: "21:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "23:00"
  },

  # Treni est->ovest
  {
  id: 1101,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "06:00",
  hf1: "08:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "09:00"
  },
  {
  id: 1103,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "08:00",
  hf1: "10:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "11:00"
  },
  {
  id: 1105,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "10:00",
  hf1: "12:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "13:00"
  },
  {
  id: 1107,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "12:00",
  hf1: "14:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "15:00"
  },
  {
  id: 1109,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "14:00",
  hf1: "16:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "17:00"
  },
  {
  id: 1111,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "16:00",
  hf1: "18:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "19:00"
  },
  {
  id: 1113,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "18:00",
  hf1: "20:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "21:00"
  },
  {
  id: 1115,
  f0: "Venezia Santa Lucia",
  f1: "Milano Centrale",
  f2: nil,
  f3: nil,
  f4: nil,
  f5: "Torino Porta Nuova",
  hf0: "20:00",
  hf1: "22:00",
  hf2: nil,
  hf3: nil,
  hf4: nil,
  hf5: "23:00"
  }
]
more_trains.each do |train|
  Train.create(train)
end

more_travels = [

  {
  cod: 1000,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "05:00",
  harr: "10:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1000,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "05:00",
  harr: "09:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1000,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "05:00",
  harr: "08:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1000,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "05:00",
  harr: "07:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1000,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "05:00",
  harr: "06:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1000,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "06:00",
  harr: "10:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1000,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "06:00",
  harr: "09:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1000,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "06:00",
  harr: "08:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1000,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "06:00",
  harr: "07:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1000,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "07:00",
  harr: "10:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1000,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "07:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1000,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "07:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1000,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "08:00",
  harr: "10:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1000,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1000,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1002,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "07:00",
  harr: "12:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1002,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "07:00",
  harr: "11:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1002,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "07:00",
  harr: "10:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1002,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "07:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1002,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "07:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1002,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "08:00",
  harr: "12:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1002,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "08:00",
  harr: "11:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1002,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "08:00",
  harr: "10:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1002,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1002,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "09:00",
  harr: "12:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1002,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "09:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1002,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1002,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "10:00",
  harr: "12:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1002,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1002,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1004,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "09:00",
  harr: "14:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1004,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "09:00",
  harr: "13:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1004,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "09:00",
  harr: "12:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1004,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "09:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1004,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1004,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "10:00",
  harr: "14:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1004,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "10:00",
  harr: "13:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1004,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "10:00",
  harr: "12:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1004,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1004,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "11:00",
  harr: "14:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1004,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "11:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1004,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1004,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "12:00",
  harr: "14:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1004,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1004,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1006,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "11:00",
  harr: "16:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1006,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "11:00",
  harr: "15:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1006,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "11:00",
  harr: "14:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1006,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "11:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1006,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1006,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "12:00",
  harr: "16:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1006,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "12:00",
  harr: "15:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1006,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "12:00",
  harr: "14:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1006,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1006,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "13:00",
  harr: "16:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1006,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "13:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1006,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1006,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "14:00",
  harr: "16:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1006,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1006,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1008,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "13:00",
  harr: "18:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1008,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "13:00",
  harr: "17:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1008,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "13:00",
  harr: "16:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1008,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "13:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1008,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1008,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "14:00",
  harr: "18:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1008,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "14:00",
  harr: "17:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1008,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "14:00",
  harr: "16:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1008,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1008,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "15:00",
  harr: "18:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1008,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "15:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1008,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1008,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "16:00",
  harr: "18:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1008,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1008,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1010,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "15:00",
  harr: "20:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1010,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "15:00",
  harr: "19:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1010,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "15:00",
  harr: "18:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1010,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "15:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1010,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1010,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "16:00",
  harr: "20:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1010,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "16:00",
  harr: "19:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1010,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "16:00",
  harr: "18:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1010,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1010,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "17:00",
  harr: "20:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1010,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "17:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1010,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1010,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "18:00",
  harr: "20:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1010,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1010,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1012,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "17:00",
  harr: "22:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1012,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "17:00",
  harr: "21:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1012,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "17:00",
  harr: "20:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1012,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "17:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1012,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1012,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "18:00",
  harr: "22:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1012,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "18:00",
  harr: "21:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1012,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "18:00",
  harr: "20:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1012,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1012,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "19:00",
  harr: "22:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1012,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "19:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1012,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1012,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "20:00",
  harr: "22:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1012,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1012,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "21:00",
  harr: "22:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1014,
  part: "Napoli Centrale",
  dest: "Torino Porta Nuova",
  hpar: "19:00",
  harr: "23:59",
  pe: 50,
  pp: 60
  },
  {
  cod: 1014,
  part: "Napoli Centrale",
  dest: "Milano Centrale",
  hpar: "19:00",
  harr: "23:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1014,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "19:00",
  harr: "22:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1014,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "19:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1014,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1014,
  part: "Roma Termini",
  dest: "Torino Porta Nuova",
  hpar: "20:00",
  harr: "23:59",
  pe: 40,
  pp: 50
  },
  {
  cod: 1014,
  part: "Roma Termini",
  dest: "Milano Centrale",
  hpar: "20:00",
  harr: "23:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1014,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "20:00",
  harr: "22:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1014,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1014,
  part: "Firenze Santa Maria Novella",
  dest: "Torino Porta Nuova",
  hpar: "21:00",
  harr: "23:59",
  pe: 30,
  pp: 40
  },
  {
  cod: 1014,
  part: "Firenze Santa Maria Novella",
  dest: "Milano Centrale",
  hpar: "21:00",
  harr: "23:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1014,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "21:00",
  harr: "22:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1014,
  part: "Bologna Centrale",
  dest: "Torino Porta Nuova",
  hpar: "22:00",
  harr: "23:59",
  pe: 20,
  pp: 30
  },
  {
  cod: 1014,
  part: "Bologna Centrale",
  dest: "Milano Centrale",
  hpar: "22:00",
  harr: "23:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1014,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "23:00",
  harr: "23:59",
  pe: 10,
  pp: 20
  },
  {
  cod: 1001,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "05:00",
  harr: "10:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1001,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "05:00",
  harr: "09:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1001,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "05:00",
  harr: "08:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1001,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "05:00",
  harr: "07:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1001,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "05:00",
  harr: "06:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1001,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "06:00",
  harr: "10:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1001,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "06:00",
  harr: "09:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1001,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "06:00",
  harr: "08:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1001,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "06:00",
  harr: "07:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1001,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "07:00",
  harr: "10:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1001,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "07:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1001,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "07:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1001,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "08:00",
  harr: "10:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1001,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1001,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1003,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "07:00",
  harr: "12:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1003,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "07:00",
  harr: "11:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1003,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "07:00",
  harr: "10:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1003,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "07:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1003,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "07:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1003,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "08:00",
  harr: "12:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1003,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "08:00",
  harr: "11:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1003,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "08:00",
  harr: "10:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1003,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1003,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "09:00",
  harr: "12:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1003,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "09:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1003,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1003,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "10:00",
  harr: "12:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1003,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1003,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1005,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "09:00",
  harr: "14:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1005,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "09:00",
  harr: "13:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1005,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "09:00",
  harr: "12:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1005,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "09:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1005,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1005,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "10:00",
  harr: "14:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1005,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "10:00",
  harr: "13:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1005,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "10:00",
  harr: "12:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1005,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1005,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "11:00",
  harr: "14:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1005,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "11:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1005,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1005,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "12:00",
  harr: "14:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1005,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1005,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1007,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "11:00",
  harr: "16:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1007,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "11:00",
  harr: "15:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1007,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "11:00",
  harr: "14:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1007,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "11:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1007,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1007,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "12:00",
  harr: "16:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1007,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "12:00",
  harr: "15:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1007,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "12:00",
  harr: "14:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1007,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1007,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "13:00",
  harr: "16:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1007,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "13:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1007,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1007,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "14:00",
  harr: "16:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1007,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1007,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1009,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "13:00",
  harr: "18:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1009,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "13:00",
  harr: "17:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1009,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "13:00",
  harr: "16:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1009,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "13:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1009,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1009,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "14:00",
  harr: "18:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1009,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "14:00",
  harr: "17:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1009,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "14:00",
  harr: "16:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1009,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1009,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "15:00",
  harr: "18:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1009,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "15:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1009,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1009,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "16:00",
  harr: "18:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1009,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1009,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1011,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "15:00",
  harr: "20:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1011,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "15:00",
  harr: "19:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1011,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "15:00",
  harr: "18:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1011,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "15:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1011,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1011,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "16:00",
  harr: "20:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1011,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "16:00",
  harr: "19:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1011,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "16:00",
  harr: "18:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1011,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1011,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "17:00",
  harr: "20:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1011,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "17:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1011,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1011,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "18:00",
  harr: "20:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1011,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1011,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1013,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "17:00",
  harr: "22:00",
  pe: 50,
  pp: 60
  },
  {
  cod: 1013,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "17:00",
  harr: "21:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1013,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "17:00",
  harr: "20:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1013,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "17:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1013,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1013,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "18:00",
  harr: "22:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1013,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "18:00",
  harr: "21:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1013,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "18:00",
  harr: "20:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1013,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1013,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "19:00",
  harr: "22:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1013,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "19:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1013,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1013,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "20:00",
  harr: "22:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1013,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1013,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "21:00",
  harr: "22:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1015,
  part: "Torino Porta Nuova",
  dest: "Napoli Centrale",
  hpar: "19:00",
  harr: "23:59",
  pe: 50,
  pp: 60
  },
  {
  cod: 1015,
  part: "Torino Porta Nuova",
  dest: "Roma Termini",
  hpar: "19:00",
  harr: "23:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1015,
  part: "Torino Porta Nuova",
  dest: "Firenze Santa Maria Novella",
  hpar: "19:00",
  harr: "22:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1015,
  part: "Torino Porta Nuova",
  dest: "Bologna Centrale",
  hpar: "19:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1015,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1015,
  part: "Milano Centrale",
  dest: "Napoli Centrale",
  hpar: "20:00",
  harr: "23:59",
  pe: 40,
  pp: 50
  },
  {
  cod: 1015,
  part: "Milano Centrale",
  dest: "Roma Termini",
  hpar: "20:00",
  harr: "23:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1015,
  part: "Milano Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "20:00",
  harr: "22:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1015,
  part: "Milano Centrale",
  dest: "Bologna Centrale",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1015,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "21:00",
  harr: "23:59",
  pe: 30,
  pp: 40
  },
  {
  cod: 1015,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "21:00",
  harr: "23:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1015,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "21:00",
  harr: "22:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1015,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "22:00",
  harr: "23:59",
  pe: 20,
  pp: 30
  },
  {
  cod: 1015,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "22:00",
  harr: "23:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1015,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "23:00",
  harr: "23:59",
  pe: 10,
  pp: 20
  },
  {
  cod: 1050,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "06:00",
  harr: "11:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1050,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "06:00",
  harr: "09:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1050,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "06:00",
  harr: "08:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1050,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "06:00",
  harr: "07:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1050,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "07:00",
  harr: "11:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1050,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "07:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1050,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "07:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1050,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "08:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1050,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1050,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "09:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1052,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "08:00",
  harr: "13:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1052,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "08:00",
  harr: "11:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1052,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "08:00",
  harr: "10:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1052,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1052,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "09:00",
  harr: "13:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1052,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "09:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1052,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1052,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "10:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1052,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1052,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "11:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1054,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "10:00",
  harr: "15:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1054,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "10:00",
  harr: "13:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1054,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "10:00",
  harr: "12:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1054,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1054,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "11:00",
  harr: "15:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1054,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "11:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1054,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1054,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "12:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1054,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1054,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "13:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1056,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "12:00",
  harr: "17:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1056,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "12:00",
  harr: "15:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1056,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "12:00",
  harr: "14:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1056,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1056,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "13:00",
  harr: "17:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1056,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "13:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1056,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1056,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "14:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1056,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1056,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "15:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1058,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "14:00",
  harr: "19:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1058,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "14:00",
  harr: "17:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1058,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "14:00",
  harr: "16:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1058,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1058,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "15:00",
  harr: "19:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1058,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "15:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1058,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1058,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "16:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1058,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1058,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "17:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1060,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "16:00",
  harr: "21:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1060,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "16:00",
  harr: "19:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1060,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "16:00",
  harr: "18:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1060,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1060,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "17:00",
  harr: "21:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1060,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "17:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1060,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1060,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "18:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1060,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1060,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "19:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1062,
  part: "Napoli Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "18:00",
  harr: "23:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1062,
  part: "Napoli Centrale",
  dest: "Bologna Centrale",
  hpar: "18:00",
  harr: "21:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1062,
  part: "Napoli Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "18:00",
  harr: "20:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1062,
  part: "Napoli Centrale",
  dest: "Roma Termini",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1062,
  part: "Roma Termini",
  dest: "Venezia Santa Lucia",
  hpar: "19:00",
  harr: "23:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1062,
  part: "Roma Termini",
  dest: "Bologna Centrale",
  hpar: "19:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1062,
  part: "Roma Termini",
  dest: "Firenze Santa Maria Novella",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1062,
  part: "Firenze Santa Maria Novella",
  dest: "Venezia Santa Lucia",
  hpar: "20:00",
  harr: "23:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1062,
  part: "Firenze Santa Maria Novella",
  dest: "Bologna Centrale",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1062,
  part: "Bologna Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "21:00",
  harr: "23:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1051,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "06:00",
  harr: "11:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1051,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "06:00",
  harr: "10:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1051,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "06:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1051,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "06:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1051,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "08:00",
  harr: "11:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1051,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "08:00",
  harr: "10:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1051,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1051,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "09:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1051,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "09:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1051,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1053,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "08:00",
  harr: "13:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1053,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "08:00",
  harr: "12:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1053,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "08:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1053,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "08:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1053,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "10:00",
  harr: "13:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1053,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "10:00",
  harr: "12:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1053,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1053,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "11:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1053,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "11:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1053,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1055,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "10:00",
  harr: "15:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1055,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "10:00",
  harr: "14:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1055,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "10:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1055,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "10:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1055,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "12:00",
  harr: "15:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1055,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "12:00",
  harr: "14:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1055,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1055,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "13:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1055,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "13:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1055,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1057,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "12:00",
  harr: "17:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1057,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "12:00",
  harr: "16:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1057,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "12:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1057,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "12:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1057,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "14:00",
  harr: "17:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1057,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "14:00",
  harr: "16:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1057,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1057,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "15:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1057,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "15:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1057,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1059,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "14:00",
  harr: "19:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1059,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "14:00",
  harr: "18:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1059,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "14:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1059,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "14:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1059,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "16:00",
  harr: "19:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1059,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "16:00",
  harr: "18:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1059,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1059,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "17:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1059,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "17:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1059,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1061,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "16:00",
  harr: "21:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1061,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "16:00",
  harr: "20:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1061,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "16:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1061,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "16:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1061,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "18:00",
  harr: "21:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1061,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "18:00",
  harr: "20:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1061,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1061,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "19:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1061,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "19:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1061,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1063,
  part: "Venezia Santa Lucia",
  dest: "Napoli Centrale",
  hpar: "18:00",
  harr: "23:00",
  pe: 40,
  pp: 50
  },
  {
  cod: 1063,
  part: "Venezia Santa Lucia",
  dest: "Roma Termini",
  hpar: "18:00",
  harr: "22:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1063,
  part: "Venezia Santa Lucia",
  dest: "Firenze Santa Maria Novella",
  hpar: "18:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1063,
  part: "Venezia Santa Lucia",
  dest: "Bologna Centrale",
  hpar: "18:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1063,
  part: "Bologna Centrale",
  dest: "Napoli Centrale",
  hpar: "20:00",
  harr: "23:00",
  pe: 30,
  pp: 40
  },
  {
  cod: 1063,
  part: "Bologna Centrale",
  dest: "Roma Termini",
  hpar: "20:00",
  harr: "22:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1063,
  part: "Bologna Centrale",
  dest: "Firenze Santa Maria Novella",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1063,
  part: "Firenze Santa Maria Novella",
  dest: "Napoli Centrale",
  hpar: "21:00",
  harr: "23:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1063,
  part: "Firenze Santa Maria Novella",
  dest: "Roma Termini",
  hpar: "21:00",
  harr: "22:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1063,
  part: "Roma Termini",
  dest: "Napoli Centrale",
  hpar: "22:00",
  harr: "23:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1100,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "06:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1100,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "06:00",
  harr: "07:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1100,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "07:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1102,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "08:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1102,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1102,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "09:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1104,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "10:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1104,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1104,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "11:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1106,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "12:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1106,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1106,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "13:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1108,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "14:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1108,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1108,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "15:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1110,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "16:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1110,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1110,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "17:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1112,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "18:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1112,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1112,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "19:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1114,
  part: "Torino Porta Nuova",
  dest: "Venezia Santa Lucia",
  hpar: "20:00",
  harr: "23:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1114,
  part: "Torino Porta Nuova",
  dest: "Milano Centrale",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1114,
  part: "Milano Centrale",
  dest: "Venezia Santa Lucia",
  hpar: "21:00",
  harr: "23:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1101,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "06:00",
  harr: "09:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1101,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "06:00",
  harr: "08:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1101,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "08:00",
  harr: "09:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1103,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "08:00",
  harr: "11:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1103,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "08:00",
  harr: "10:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1103,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "10:00",
  harr: "11:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1105,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "10:00",
  harr: "13:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1105,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "10:00",
  harr: "12:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1105,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "12:00",
  harr: "13:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1107,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "12:00",
  harr: "15:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1107,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "12:00",
  harr: "14:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1107,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "14:00",
  harr: "15:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1109,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "14:00",
  harr: "17:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1109,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "14:00",
  harr: "16:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1109,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "16:00",
  harr: "17:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1111,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "16:00",
  harr: "19:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1111,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "16:00",
  harr: "18:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1111,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "18:00",
  harr: "19:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1113,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "18:00",
  harr: "21:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1113,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "18:00",
  harr: "20:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1113,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "20:00",
  harr: "21:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1115,
  part: "Venezia Santa Lucia",
  dest: "Torino Porta Nuova",
  hpar: "20:00",
  harr: "23:00",
  pe: 20,
  pp: 30
  },
  {
  cod: 1115,
  part: "Venezia Santa Lucia",
  dest: "Milano Centrale",
  hpar: "20:00",
  harr: "22:00",
  pe: 10,
  pp: 20
  },
  {
  cod: 1115,
  part: "Milano Centrale",
  dest: "Torino Porta Nuova",
  hpar: "22:00",
  harr: "23:00",
  pe: 10,
  pp: 20
  }

]

more_travels.each do |travel|
  Travel.create(travel)
end
