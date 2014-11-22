# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Character.create(name: 'Faenglas', race: 'Elf', charclass: 'Wizard', level: 9)
Infosheet.create(deity: 'Cayden Cailean', homeland: '', size: 'reg', gender: 'm', age: '114', height: '72', weight: '176', hair: 'white', eyes: 'white')