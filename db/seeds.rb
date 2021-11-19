# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# save my future bacon

User.create(email: 'fab@azerty.be', password: '123123', name: 'Fabian', location: 'Charleroi', pet_sitter: true)
User.create(email: 'kyl@azerty.be', password: '123123',name: 'Kylian', location: 'Tubize', pet_sitter: false)
User.create(email: 'victoire@azerty.be', password: '123123',name: 'Marie-Victoire', location: 'Knokke', pet_sitter: true)
User.create(email: 'berangere@azerty.be', password: '123123',name: 'Marie-Louise', location: 'Lasne', pet_sitter: true)
User.create(email: 'berangere@azerty.be', password: '123123',name: 'Marie-Louise', location: 'Lasne', pet_sitter: true)
User.create(email: 'pierre@azerty.be', password: '123123',name: 'Pierre', location: 'Brussels', pet_sitter: true)
User.create(email: 'amandine@azerty.be', password: '123123',name: 'Amandine', location: 'Ixelles', pet_sitter: true)
User.create(email: 'kevin@azerty.be', password: '123123',name: 'Kévin', location: 'Uccle', pet_sitter: true)
User.create(email: 'loue@azerty.be', password: '123123',name: 'Louise', location: 'Auderghem', pet_sitter: true)
