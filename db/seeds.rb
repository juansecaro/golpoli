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
