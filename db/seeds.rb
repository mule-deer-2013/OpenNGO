# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PROVINCES = [
  'Capital Federal',
  'Buenos Aires',
  'Catamarca',
  'Chaco',
  'Chubut',
  'Cordoba',
  'Corrientes',
  'Entre Rios',
  'Formosa',
  'Jujuy',
  'La Pampa',
  'La Rioja',
  'Mendoza',
  'Misiones',
  'Neuquen',
  'Rio Negro',
  'Salta',
  'San Juan',
  'San Luis',
  'Santa Cruz',
  'Santa Fe',
  'Santiage del Estero',
  'Tierra del Fuego',
  'Tucuman'
]

CAUSES = [
  'Gender and Equality',
  'Sports',
  'Housing Development',
  'Public Policy',
  'Health and Scientific Research',
  'Arts and Culture',
  'Disabilities',
  'Human Rights',
  'Institutional Development',
  'Community Development',
  'Enviroment',
  'Education',
  'Childhood'
]


ACTIVITIES = [
  'Consulting',
  'Financing',
  'Research',
  'Training',
  'Direct Assistance'
]


AGES = [
  'Infancy',
  'Childhood',
  'Teenagers',
  'Adults',
  'Seniors'
]


10.times {Org.create(name: Faker::Company.name)}

PROVINCES.each {|prov| Location.create(name: prov)}
CAUSES.each {|cause| Cause.create(description: cause)}
ACTIVITIES.each {|act| Activity.create(description: act)}
AGES.each {|age| Age.create(description: age)}


Org.all.each do |seed_org|
  seed_org.locations << Location.find_by_name(PROVINCES.sample)
  seed_org.branches << Branch.create( description: Faker::Address.street_name)
  seed_org.branches << Branch.create( description: Faker::Address.street_name)
  seed_org.causes << Cause.find_by_description(CAUSES.sample)
  seed_org.causes << Cause.find_by_description(CAUSES.sample)
  seed_org.activities << Activity.find_by_description(ACTIVITIES.sample)
  seed_org.activities << Activity.find_by_description(ACTIVITIES.sample)
  seed_org.ages << Age.find_by_description(AGES.sample)
end
