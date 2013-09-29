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



100.times {Org.create(name: Faker::Company.name)}


PROVINCES.each {|prov| Province.create(name: prov)}
CAUSES.each {|cause| Cause.create(description: cause)}
ACTIVITIES.each {|act| Activity.create(description: act)}
AGES.each {|age| Age.create(description: age)}


Org.all.each do |seed_org|
  3.times do 
    myloc = Location.new(primary: false) 
    myloc.province = Province.find_by_name(PROVINCES.sample)
    seed_org.locations << myloc
  end

  seed_org.locations.first.update_attributes(primary: true)
  seed_org.branches << Branch.create( description: Faker::Address.street_name)
  seed_org.branches << Branch.create( description: Faker::Address.street_name)
  seed_org.causes << Cause.find_by_description(CAUSES.sample)
  seed_org.causes << Cause.find_by_description(CAUSES.sample)
  seed_org.activities << Activity.find_by_description(ACTIVITIES.sample)
  seed_org.activities << Activity.find_by_description(ACTIVITIES.sample)
  seed_org.ages << Age.find_by_description(AGES.sample)

  seed_org.board = Board.create(btype: "executive board")
  seed_org.board.people << Person.create(name: Faker::Name.name)
  seed_org.board.people << Person.create(name: Faker::Name.name)
  seed_org.advisory = Advisory.create()
  seed_org.advisory.people << Person.create(name: Faker::Name.name) 
  seed_org.team = Team.create(fte: 23,pte: 12,volunteers:421, authority: "#{Faker::Name.name},#{Faker::Name.title}")
end
