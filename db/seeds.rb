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

LOGOS =[

"https://lh3.googleusercontent.com/AFeqMuLcAUdQiNIeTiScMdgw0IJGGLrekjEK7taZ8a9vmN0tL6obWYzpa3Ttz_HgoA=s190",
"https://lh5.googleusercontent.com/-O_ipOvk7SxYtcj90hcxkBVOoCfcz_a2MqwUvthU0itn6rbmXal2VsbhchDEa54cnA=s190",
"https://lh6.googleusercontent.com/qX859uGu4EOlOn8byaVSCPY-TKLYzOFORqDRKKqi64oYgNxROiBoKGX8HLsh6nd5hA=s190",
"https://lh3.googleusercontent.com/vwSX0oKjtAmAzn0SgirKzNUYxD38oTtJGd-I7OH_en3M3p4xd6L5CO9Fj7NhU3VqJA=s190",
"https://lh5.googleusercontent.com/E6CivCifxBl0MHFo0jMy4KWub2hNj7cAiXyNMlP_S1yR22RnMX_TpCatULyoTgWGZw=s190",
"https://lh6.googleusercontent.com/uGdGYACxvYtQ57w0AqL_GAnQtNQz17ihUgt0zCUc8oqGz_Zco5-rZJDXW_L3Iy71mQ=s190",
"https://lh5.googleusercontent.com/G_Ib6s9PN0EOhGM22FT5vlY_qvoUQ5797R17G3nMsf5aQsl_4WTxIUgkgFYYTs8E7g=s190",
"https://lh3.googleusercontent.com/OtAQQN5Jo6nclII9qD64AaFoKnqMDik2pGKg1DetpFJUzRMW_99U-5TRMWp1LbJWSg=s190",
"https://lh6.googleusercontent.com/2TWNCIDMCYMiUJ8AAUfqPo-QWvKyYsc2tND_tajeRJOjXSXSNIRaOhCBOJIousw9mQ=s190",
"https://lh6.googleusercontent.com/bJTY7I9AeIm9rei3IZOGL5yyXQsKALD8vN9yoJiHmB4vQgeB-OyNszwfijMyhmyr2g=s190",
"https://lh3.googleusercontent.com/sue87KDXBdPmMsX2fHx85cjvmyRVfEpQpU34Wr-fWvwGxJ7tez3qqjyl9_A5G3TA9A=s190",
"https://lh5.googleusercontent.com/nHlvpcKtbttLV2G5e4mjEEFZlc3FrU-pluG1O3Hp3_6EPzEUHjKNIFsWmVre2fAncA=s190",
"https://lh4.googleusercontent.com/Jc9NpG016LtocYfUWYXXGJeqnltoVcNs47zlhOnypR1kAMOzBXsIui7ZdjBr0YqjZA=s190",
"https://lh6.googleusercontent.com/2TWNCIDMCYMiUJ8AAUfqPo-QWvKyYsc2tND_tajeRJOjXSXSNIRaOhCBOJIousw9mQ=s190",
"https://lh6.googleusercontent.com/bJTY7I9AeIm9rei3IZOGL5yyXQsKALD8vN9yoJiHmB4vQgeB-OyNszwfijMyhmyr2g=s190",
"https://lh4.googleusercontent.com/aQxf-ZNPW_evGokzpTqzUJsrXUVq8n1U4__nZqtdWdQZqsO_WeBY8hrPZ0gE7fWSbQ=s190",
"https://lh6.googleusercontent.com/692UC6eLt-Jva5xQVuuabk00vr4LuOmYctKK0fY5OFFRnaDvjTNw835Z8NwoRdUBRQ=s190",
"https://lh4.googleusercontent.com/mjzvJDkcgqbQh0dOzU4rkkVWr8ger8z3Wk57AgpKTxvRhtXqDae888K0TWvxflAUAg=s190",
"https://lh6.googleusercontent.com/tAqwWiWe_plhAQGIGbRTSGo-mlG67T55E95-kJPole6UxLBYfFQujuXpM3pSSeZ7sw=s190",
"https://lh3.googleusercontent.com/sd8N3EpcWc1ordFYciojKBfLYwF3E4VIsg3pUIWQ1QTTktpvYqwwRP5I5ZceljvtWQ=s190",
"https://lh5.googleusercontent.com/2rgQlU__9NbOmmGDAfI-2X49WjO6B8hY-kUJqw_wb6oUmUz49MweS9Pb3vIykxqNFQ=s190",
"https://lh4.googleusercontent.com/Ia6953t6zCC9hIg5Aa9pqyO6afJDyG5MD50_ZIgvgjNcRA4sbd42AQnxnfcNvKwpqA=s190",
"https://lh4.googleusercontent.com/WgMxgNQfahq6MNONahki53-NbQJP2ZcCwGCDg-ru6GJWArLcGqp9nnMpOxVDDAvVLw=s190",
"https://lh5.googleusercontent.com/yF5Zfbgh443M98pP5bsZJBCk2ZL42LjGETDS9hZaH-4qixXhtWsYu7xdDnAEheJNaA=s190",
"https://lh3.googleusercontent.com/rsC32DfkGJeTPpElUZqqVvV7MNt10u9qQUInqQDSLgJc2H04k2cQ6e-vL7DVMT1bkg=s190",
"https://lh5.googleusercontent.com/R2YyEPMVQcUscPdQEQFzGW4fjR6wjdTMNk1sBHS22CxwtQYH2ic0ijo--t40tgF9vg=s190",
"https://lh5.googleusercontent.com/QLTj7zxgAz1inMXc5hL5plXmiQtMtpcAQgv9unVaGxWo4_PjoCX7PkI1dZ3OT0KnrQ=s190",
"https://lh4.googleusercontent.com/1HXhsR-Kqu33UCkMBxSjroz0PQ4XQ3ZcsWhCr-yy3v0oclU6E5dK6eiWOMyK8hYrNQ=s190",
"https://lh3.googleusercontent.com/fQWtG2FXfoOaPMFmMw71i7e6Z9ER87I-fvUG0YjgTdzlgOyJy9V8vy5cMgcW4yEShA=s190",
"https://lh4.googleusercontent.com/FtG9pajMapdjvthQj_mqETVrJk4pQCTdqrSa48jpP21-KeAa5cLYRcMm89gSytPWuQ=s190",
"https://lh4.googleusercontent.com/lJ4xmi0B0NPjc-k9Y6eCIPl4_epzfVmc_G7E9JXNUVoxVK4A7QVg3DzAD6v2HZB1Pg=s190",
"https://lh6.googleusercontent.com/Rsfn4qmPwQgCR5dstLXErN8eWYYG1TSq3n4mO3ls3QWx4B7uOHUnK0RzE8E3AFW9kw=s190",
"https://lh4.googleusercontent.com/3m6KPyXFsWpkBlGNgZPBEwvEvvO4TTChvOixo5sfvm_O_EPVFLKmw9BXaPNIgoMNkA=s190",
"https://lh6.googleusercontent.com/22OuzujQN_oqEo2gKe5RTrzmdPVOJVr0sMCfV981OIlxcHZral7LVe2xYfldYqUU9A=s190",
"https://lh3.googleusercontent.com/IYataFzZQnZ7NA4xUFcGbrcNU7Xt1DfPdNHKmtoqG7jAQauCJk_Tbx6-d8Ut4rMXsQ=s190",
"https://lh3.googleusercontent.com/DV72vaZCmzGXJwE8yinW0FKcr0_GmG6i3f_4Q0QsymGveX7MpEtVVEcPxMW2g1Y66A=s190",
"https://lh3.googleusercontent.com/-Y7poY4YDq_g4LrhHNUpzLOaP0HWcWUT-ATcSiEEVFT_8C2WKCqd6Rk6JbLdDEbjFQ=s190",
"https://lh4.googleusercontent.com/YyMca91Q5EMmqXU6FAGz0FimTyE4WwZA3CumPIR6yyXIHdSDYPXH_9Y3wwI5F_yCww=s190",
"https://lh6.googleusercontent.com/Mh2xZMhoMQ7s6ibg_W2pUWQtN-6WjEz9tarz1s_XuwfgYKrJCKer5C0PwIILynGChQ=s190",
"https://lh4.googleusercontent.com/Arvgy2GrJ0Dn95-tw7j-R7xIWCsl9chWtBe6tnYbiTwS_iiRUEU2_oMsZehCY6Bi2g=s190",
"https://lh5.googleusercontent.com/NPosW9LJJv20XGtXMcYXyaMQj-fhltxahec4tU7LQqNwGa5vfgJS1F4OA3sUQekW9w=s190",
"https://lh5.googleusercontent.com/6KrbY-AwY2vQqPjnCGtesb3jDWgh8PmQXBJhT0jN1YNIO6aGBWlesM6u2G11m7C0Rw=s190",
"https://lh6.googleusercontent.com/ANNPjoPB-gvsm2H9PZrycyjPODeEK2nKu5of85Xhgm7vd6YkDVRn4vTBEexbntJGoQ=s190",
"https://lh5.googleusercontent.com/XZweyQ2np_I_1yc4hk5nSTM0X1vTl6qjFUU8wJsdQ69NBkbpNKTyvwF089ixbRwIvg=s190",
"https://lh6.googleusercontent.com/_38KxJzkAUzGiipZTkchdVgGSWSt_sg4OWo4RRZLh-aVhRSI3R4ux-d_E2E13PktHw=s190",
"https://lh3.googleusercontent.com/I_0ACV3ExuV5RASS9_u6QoTfJyswPjTMioniuP_ofIrKAK0rAmNhCguPfuCGDdXg5Q=s190",
"https://lh6.googleusercontent.com/omG8n1VVhyUOOOr5Dd_kH1USJb-PA_RElKIV9xqb-WnC-unrw-GfjCYghymOV_umIA=s190",
"https://lh3.googleusercontent.com/oHP0vOmdhmoWoTFVng6iiLR3jUblRi0N0WbjRs6ixdZ_Kk8Le2pMV_vQ9YzqPyZc1A=s190",
"https://lh3.googleusercontent.com/gVsBfLjmNjUh46tnojEU9vJ7zO3Z_y_FkdYF1fCR8gY4LJj96L0F77rvN0PuqczKjA=s190",
"https://lh5.googleusercontent.com/xcOsaLK0gM7XFgj5P7nS0IE-MW_HrCtnrGa42bUQGYIT_YiGCFWgYCCRvkFF4vjbgg=s190",
"https://lh4.googleusercontent.com/iY4vThgWLSsoORlOhP-42UrbB9ECpK3YWXLQNOFgNO5IwJVkWZWtirtXED2BhqLzgg=s190",
"https://lh5.googleusercontent.com/93QlRmDKQ-Uqk66IqXxrqYoS5KTqJvQRjcCVHNcgBGF3McVnQKOk8Pn5WpxJ3FVWvw=s190",
"https://lh6.googleusercontent.com/9dOJjazNu--uKv46leUGP0VRciJwmgdoT4uheLIRQoSVkYBgnkNRy2vDPLSngRYHLQ=s190",
"https://lh6.googleusercontent.com/sHDsOw6VHVaozAPnHoAgkt0Wwx5Da-h0qmQScXN6Ht2MOciB05Kikf7skaSdxmBvHw=s190",
"https://lh4.googleusercontent.com/T1O8EZHv6TdF731ssL9ruxNP1hT0Ro3bQdWi5Rpdbux6yFWcqUnZtaDzBo8EZFYUGg=s190",
"https://lh3.googleusercontent.com/fU1mUn6fmqfLDEiUaadHvbu2Bt_DpMuvDk3BY07548oHO1_iMPulokvnSsSg1Fm8aw=s190",
"https://lh4.googleusercontent.com/KOdpYDrUTEdTJXO8_GUF5Me9CCAUPzioZufKF-yAMJECllSZpEtlDfWIlu0U5L1b6A=s190",
"https://lh3.googleusercontent.com/dyYhRzpfyuDSLQZzsCX-a__GSmZAEbWkxlgJeNXq6wTGJGs1BoU4UbPPL_V1Dq5slg=s190",
"https://lh4.googleusercontent.com/IosmvBe0hfVrwrMVPaB_JPb44kpUqaVeh-2q6HE8F--0ALPpph2i0AEsNTwTJNzfyQ=s190",
"https://lh4.googleusercontent.com/FkUN8OreHpbhzAaxJNKN3Qds77tyvJnUt9r-w4L42mpdtmfr0vLZeN_wZXmVjGzfVA=s190",
"https://lh6.googleusercontent.com/gQQvZlmeVe3lxnhXBWh5hP4NSptGt6Qfb63B_hr5t3GI4ZgIrpRdlKtxRlUcC2RQFw=s190",
"https://lh4.googleusercontent.com/HK0SCyvOtde39Jj56HbWXzKngTvUiPSclL7Xf6YsQY7CusiXdefpv_wNr20_yJ7DPQ=s190",
"https://lh6.googleusercontent.com/qMU76sSVEnX6ljykuhkvzxI5QklIfeEqkN9r2yTTGffF2C9I71xduHMtMph-GbF7ww=s190",
"https://lh3.googleusercontent.com/B2pcd3HgWYMJTNCAtcYpXP7QQts-xvF82ZL1gruT42o7-eShErQVpEXS58ehhD67FQ=s190",
"https://lh6.googleusercontent.com/0lMs8EgAAYuV2VDFV2xVKUA9-ssTTDiOn4JTc9ojs8LKoFLNKg0m0dvpwZdORNWing=s190",
"https://lh5.googleusercontent.com/yYkXp2UL-y_cAHEEQVDZaf8Ru-Rw2aVsID9PpxmTpI8mUyVlqFZI7sLlPPCKh5lWBw=s190"
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
  facebook: "www.facebook.com",
  linkedin: "www.linkedin.com",
  twitter:"CIPPEC",
  logo_url: LOGOS.sample

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

  3.times{seed_org.programs << Program.create(pro_name: Faker::Name.name, pro_goal:Faker::Name.name, pro_description: Faker::Name.name, pro_target: "343", pro_location:"Buenos Aires", pro_budget: "US$100,000", pro_funding_sources:"government grant", pro_affiliations:"none", pro_metrics:"none", pro_results:"pending")}


end



@cippec = Org.create(
  name: "CIPPEC",
  initials: "CIPPEC",
  city: "Ciudad de Buenos Aires",
  address: "Callao 25",
  telephone: "(0 54 11) 4384-9009",
  email: "info@cippec.org",
  website: "www.cippec.org",
  transparency: 3,
  youtube: "http://www.youtube.com/embed/LHKLS6TECTA",
  mission: "Trabajar por un Estado justo, democratico y eficiente que mejore la vida de las personas.",
  fte: 45,
  pte: 16,
  volunteers: 0,
  leader_name: "Fernando Straface",
  leader_title: "Director Ejecutivo",
  founding_date: Date.parse('01-06-2000'),
  starting_date: Date.parse('01-06-2000'),
  legal_type: "Fundacion",
  legal_num: "C- 1679794/2000",
  cuit: "33-70724137-9",
  trans_policy: true,
  vat_exempt: true,
  income_exempt: true,
  tax_ded: true,
  code_conduct: true,
  external_auditor: true,
  auditor_name: "Deloitte",
  annual_reporting: true,
  external_prog_eval: false,
  num_prog_ind: 0,
  num_prog_org: 0,
  num_prog_pub: 5,
  facebook: "https://www.facebook.com/cippec.org",
  linkedin: "http://www.linkedin.com/company/cippec",
  twitter:"cippec",
  logo_url: "https://www.evernote.com/shard/s189/sh/ec6de880-f441-4620-91ba-18ebd35d4e8e/d202aa23b90e45133091cb4f3a71c1c7/deep/0/Screenshot%2010/3/13%2011:02%20PM.png"
  )

  3.times {
    myloc = Location.new(primary: false)
    myloc.province = Province.find_by_name(PROVINCES.sample)
    @cippec.locations << myloc 
  }

  @cippec.locations.first.update_attributes(primary: true)
  @cippec.branches << Branch.create(description: "n/a")
  @cippec.causes << Cause.create(description: "Community Development")
  @cippec.causes << Cause.create(description: "Public Policy")
  @cippec.causes << Cause.create(description: "Health and Nutrition")
  @cippec.causes << Cause.create(description: "Institutional Development")
  @cippec.activities << Activity.create(description: "Technical Support / Consulting")
  @cippec.activities << Activity.create(description: "Training")
  @cippec.activities << Activity.create(description: "Lobbying / Policy work")
  @cippec.ages << Age.create(description: "Adults")
  @cippec.legal = Legal.create(legal_type: "Fundacion")
  @cippec.board = Board.create(btype: "Board of Directors")
  @cippec.affiliations << Affiliation.create(aff_name: "Fundacion Navarro Viola", aff_type: "National Foundation", aff_description: "Co-gestion del Concurso de Proyectos Sociales - nuestros Mayores. ")
  @cippec.affiliations << Affiliation.create(aff_name: "Embajada de Suiza", aff_type: "International Government", aff_description: "Colaboracion en el desarrollo del Concurso 'Segundos para Todos'.")
  @cippec.networks << Network.create(net_name: "RACI", net_scope: "National", net_status: "Member")
  @cippec.networks << Network.create(net_name: "AEDROS", net_scope: "National", net_status: "Member")
  @cippec.prizes << Prize.create(prize_name: "Mejor Think Tanks de Argentina", prize_date: '31-12-2010' , prize_giver: "Universidad de Pennsylvania")
  @cippec.prizes << Prize.create(prize_name: "Premio Juscelino Kubitchek", prize_date: '31-02-2010', prize_giver: "BID")
  @cippec.board.people << Person.create(name: "Juan Fulano")
  @cippec.board.people << Person.create(name: "Ricardo Gonzalez")
  @cippec.advisory = Advisory.create()
  @cippec.advisory.people << Person.create(name: "Carlos Adamo")
  @cippec.advisory.people << Person.create(name: "Gustavo Herrero")
  @cippec.objectives << Objective.create(summary: "Trabajar para que el Estado sea capaz de responder a las necesidades de los ciudadanos , promoviendo la implementacion de mejores practicas en el sector estatal y el desarrollo de mas y mejores profesionales con vocacion por lo publico.")
  @cippec.objectives << Objective.create(summary: "Desarrollar y difundir herramientas que permitan a la sociedad civil incrementar su capacidad de participacion en las politicas de Estado.")
  @cippec.objectives << Objective.create(summary: "Servir como fuente permanente de consulta sobre politicas publicas y contribuir al debate publico con propuestas innovadoras para mejorar el accionar del Estado y el bienestar de la sociedad.")
  @cippec.objectives << Objective.create(summary: "Llevar a cabo proyectos de investigacion que complementen el trabajo de otros centros de estudio y que se propongan comprender y solucionar los problemas fundamentales de la realidad argentina.")

  @cippec.programs << Program.create(pro_name: "Desarrollo Local", 
                                     pro_goal: "Fortalecer las instituciones politicas, economicas y sociales de los ambitos locales a traves de la capacitacion, asesoramiento, investigacion y analisis de la realidad municipal. Consolidar la relacion con lideres locales ya identificados..." , 
                                     pro_description: "El programa de Desarrollo Local capacito a 70 funcionarios ejecutivos municipales de todo el pais, entre ellos 15 intendentes, en la VI Edicion del Programa Lideres Municipales... ", 
                                     pro_target: "Poblacion Objetivo: Tomadores de decision", 
                                     pro_location: "Buenos Aires", 
                                     pro_budget: "US$100,000", 
                                     pro_funding_sources: "Gobiernos, Empresas y Organizaciones de Cooperacion Internacional", 
                                     pro_affiliations: "none", 
                                     pro_metrics: "none", 
                                     pro_results: "El programa de Desarrollo Local capacito a 70 funcionarios ejecutivos municipales de todo el pais, entre ellos 15 intendentes, en la VI Edicion del Programa Lideres Municipales...", 
                                     )

