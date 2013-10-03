require 'Faker'

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
  'Arts & Culture',
  'Crisis Response',
  'Science & Technology',
  'Sports',
  'Human Rights',
  'Community Development',
  'Disabilities',
  'Education',
  'Institutional Development',
  'Gender & Equality',
  'Ethnic & Indigenous Populations',
  'Environment',
  'Media & Communication',
  'Health & Nutrition',
  'Public Policy',
  'Housing Development',
  'Social Work',
  'Other'
]


ACTIVITIES = [
  'Technical Support / Consulting',
  'Financing',
  'Research',
  'Training',
  'Services / Direct Assistance',
  'Communication / Campaigns',
  'Lobbying / Policy work'
]
 

AGES = [
  'n/a',  
  'Infancy',
  'Childhood',
  'Teenagers',
  'Youth',
  'Adults',
  'Seniors'
]

 LEGALS = [
    "Asociacion Civil",
    "Fundacion",
    "Cooperativa",
    "Mutual",
    "Corporacion",
    "Federacion",
    "Confederacion"
  ]

 INSTITUTION = [
    "International Foundation",
    "Business",
    "National Foundation",
    "International Government",
    "Local Government",
    "International Organization",
    "ONG",
    "Educational Institution"
  ]




LEVELS = [3,2,1,0]

50.times {Org.create(
  name: Faker::Company.name,
  initials: Faker::Address.city_prefix,
  city: Faker::Address.city,
  address: Faker::Address.street_address,
  telephone: "(123)456-7894",
  email: Faker::Internet.email,
  website: Faker::Internet.domain_name, 
  transparency: LEVELS.sample,
  youtube: "http://www.youtube.com/embed/LHKLS6TECTA",
  mission: Faker::Lorem.paragraph,
  fte: 23, 
  pte: 12, 
  volunteers: 42, 
  leader_name: "#{Faker::Name.name}", 
  leader_title: "Executive Director",
  founding_date: Date.parse('31-10-1975'),
  starting_date: Date.parse('01-12-1978'),
  legal_type: "Foundation",
  legal_num: "123-123-123",
  cuit: "523-5243-8",
  trans_policy: [true,false].sample,
  vat_exempt: [true,false].sample,
  income_exempt: [true,false].sample,
  tax_ded: [true,false].sample,
  code_conduct:[true,false].sample,
  external_auditor: [true,false].sample,
  auditor_name: "Ernst & Young",
  annual_reporting: [true,false].sample,
  external_prog_eval: [true,false].sample,
  num_prog_ind: Random.rand(0..20),
  num_prog_org:Random.rand(0..20),
  num_prog_pub:Random.rand(0..20),
  twitter:"CIPPEC"
    
)}


# need to seed objectives after merge

PROVINCES.each {|prov| Province.create(name: prov)}
CAUSES.each {|cause| Cause.create(description: cause)}
ACTIVITIES.each {|act| Activity.create(description: act)}
AGES.each {|age| Age.create(description: age)}
LEGALS.each {|type| Legal.create(legal_type: type)}

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
  seed_org.legal = Legal.first
  seed_org.board = Board.create(btype: "executive board")
  seed_org.affiliations << Affiliation.create(aff_name: "Fundacion Navarro Viola", aff_type: "National Foundation", aff_description: "Co-gestion del Concurso de Proyectos Sociales - nuestros Mayores. ")
  seed_org.affiliations << Affiliation.create(aff_name: "Embajada de Suiza", aff_type: "International Government", aff_description: "Colaboracion en el desarrollo del Concurso 'Segundos para Todos'.")
  seed_org.networks << Network.create(net_name: "RACI", net_scope: "National", net_status: "Member")
  seed_org.networks << Network.create(net_name: "AEDROS", net_scope: "National", net_status: "Member")
  seed_org.prizes << Prize.create(prize_name: "Mejor Think Tanks de Argentina", prize_date: '31-12-2010' , prize_giver: "Universidad de Pennsylvania")
  seed_org.prizes << Prize.create(prize_name: "Premio Juscelino Kubitchek", prize_date: '31-02-2010', prize_giver: "BID")
  seed_org.board.people << Person.create(name: Faker::Name.name)
  seed_org.board.people << Person.create(name: Faker::Name.name)
  seed_org.advisory = Advisory.create()
  seed_org.advisory.people << Person.create(name: Faker::Name.name)
  3.times{seed_org.objectives << Objective.create(summary:Faker::Lorem.paragraph)}
 
 
end
