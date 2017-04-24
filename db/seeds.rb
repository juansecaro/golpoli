# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Entity.create!(
  name: "Ayuntamiento de Llerena",
  cif: "AI-98989887",
  paypal: "alcalde@llerena.org",
  address: "Plaza de España, s/n",
  city: "Llerena",
  postal_code: "06900",
  country: "España",
  bank: "0192-0458-85-2054-2096",
  )

Field.create!(
  name: "Polideportivo",
  normal_price: 10,
  special_price: 15,
  active: true,
  other: "A veces tiene goteras",
  kind: "futsal",
  url1: "llerena/blao1.jpg",
  url2: "llerena/blao2.jpg",
  url3: "llerena/blao3.jpg",
  entity_id: 1,
  id: 1,
)
Field.create!(
  name: "Campo fútbol 7",
  normal_price: 14,
  special_price: 21,
  active: true,
  other: "Charcos",
  kind: "futbol",
  url1: "llerena/blao1.jpg",
  url2: "llerena/blao2.jpg",
  url3: "llerena/blao3.jpg",
  entity_id: 1,
)
Field.create!(
  name: "Pádel 1",
  normal_price: 6,
  special_price: 15,
  active: true,
  other: "Nada",
  kind: "padel",
  url1: "polillerena.jpg",
  url2: "llerena/blao2.jpg",
  url3: "llerena/blao3.jpg",
  entity_id: 1,
)
Field.create!(
  name: "Pádel 2",
  normal_price: 6,
  special_price: 10,
  active: true,
  other: "Nada",
  kind: "padel",
  url1: "llerena/blao1.jpg",
  url2: "llerena/blao2.jpg",
  url3: "llerena/blao3.jpg",
  entity_id: 1,
)
Field.create!(
  name: "Pádel 3",
  normal_price: 8,
  special_price: 12,
  active: true,
  other: "A veces tiene goteras",
  kind: "tenis",
  url1: "llerena/blao1.jpg",
  url2: "llerena/blao2.jpg",
  url3: "llerena/blao3.jpg",
  entity_id: 1,
)
Contact.create!(
name: "Fali",
phone: "644252097",
email: "fali@llerena.org",
kind: "técnico de pista",
other: "Amigo de lo ajeno",
entity_id: 1,
)
Contact.create!(
name: "Pepe",
phone: "644457097",
email: "pepe@llerena.org",
kind: "administrador",
other: "Solo está de 11 a 1",
entity_id: 1,
)
Schedule.create!(
field_id: 1,
monthday: 2,
id:1,
h0: nil,
h1: nil,
h2: nil,
h3: nil,
h4: nil,
h5: nil,
h6: nil,
h7: nil,
h8: nil,
h9: nil,
h10: nil,
h11: nil,
h12: nil,
h13: nil,
h14: nil,
h15: nil,
h16: nil,
h17: 1,
h18: 1,
h19: 1,
h20: 1,
h21: 1,
h22: 1,
h23: 1,
h24: 1,
h25: 1,
h26: 1,
h27: 1,
h28: 1,
h29: 2,
h30: 2,
h31: 2,
h32: 0,
h33: 0,
h34: 3,
h35: 3,
h36: 3,
h37: 3,
h38: 3,
h39: nil,
h40: nil,
h41: nil,
h42: nil,
h43: nil,
h44: nil,
h45: nil,
h46: nil,
h47: nil,
)

Schedule.create!(
field_id: 2,
monthday: 1,
id: 2,
h0: nil,
h1: nil,
h2: nil,
h3: nil,
h4: nil,
h5: nil,
h6: nil,
h7: nil,
h8: nil,
h9: nil,
h10: 0,
h11: 0,
h12: 2,
h13: 2,
h14: 2,
h15: 2,
h16: 2,
h17: 1,
h18: 1,
h19: 1,
h20: 1,
h21: 4,
h22: 4,
h23: 1,
h24: 1,
h25: 1,
h26: 1,
h27: 1,
h28: 1,
h29: 2,
h30: 2,
h31: 2,
h32: 0,
h33: 0,
h34: 3,
h35: 3,
h36: 3,
h37: 3,
h38: 3,
h39: nil,
h40: nil,
h41: nil,
h42: nil,
h43: nil,
h44: nil,
h45: nil,
h46: nil,
h47: nil,
)
