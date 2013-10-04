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

"https://lh3.googleusercontent.com/HZkjlxSiy-QqokX_QYEQ2ZR2UM4HcbxpfuCSMoTdVrgCEf30YVguXFF_13qd7YYolQ=s190",
"https://lh6.googleusercontent.com/Ybig-5XtqkgmT06fS_GeWujCElnLAJ43i4QOJ0iVVzXkf2RK6B1qyya_ErLcuw4Bww=s190",
"https://lh3.googleusercontent.com/dsTkQtXXqHWDra8IwGv-JuN7WIZXrDXMYmp63ILDbPuZlv6vqh6m2jS7DN_BlPvLuA=s190",
"https://lh6.googleusercontent.com/H9xidjfwBPQjL5m1lYE9-qxbiFQN_rHmpATrUU2i8W_FkAKtWCrA04KFVfTARzbsfg=s190",
"https://lh6.googleusercontent.com/X0tCCQuEqjiL9CBcToU8Y5TWT0-0rNbJ5dbK2IqQX3ZuCQlJu7A-H6abdJlPUK9fqw=s190",
"https://lh4.googleusercontent.com/zbJnuV2KabqMRA7m8Zm01oN8aIZHHYSU4FUAQ1qel40blDrjK_IGHU_AVpkuMWW1EA=s190",
"https://lh4.googleusercontent.com/TvjM2zyAt3gI26yqYCNFarxxdoGrViQhzGnGYPnvcjMpoS04MLhaZ-Zf4GOJohkwbg=s190",
"https://lh5.googleusercontent.com/ntCaDmNXBSdFw1YdJQnA43SVfcCTOUTyEf1gY4989aAhFIasM8NX_nLPOqnLasf-JA=s190",
"https://lh6.googleusercontent.com/U7F6tblLl2xLJ6gPQtFQ2RHlrWfP91nonbl-SZw7BmvXvOSm5yMs98YN62NOMK5ZNA=s190",
"https://lh5.googleusercontent.com/fcLOqXRajx8-_-ies0BG50GrgkxFy4XBvAFmLrPKrvVPnRVEbJLRcegvTaZQ3ewpzQ=s190",
"https://lh4.googleusercontent.com/Ag2oZNhYdfeujVlvU2mNDFv2qoEIq_NYQm4gthEPXunsPLpcEgdyXv6BLg9V7pxTrg=s190",
"https://lh4.googleusercontent.com/RdC_KjB5usfdT5vaqgP5P6vXOg1g_2lCP1vHujanaNnZDIWK28rm_BVpYvQWX1r3Ow=s190",
"https://lh6.googleusercontent.com/TjG_hTa1QT_2dq9c9a-Rp8iHezDYJzY5lIwRuo1FjU_o5Brwfek-f4sZXuRygj2btQ=s190",
"https://lh4.googleusercontent.com/I2dRoMtWKneT1lngDOVmjYtM5cuquzN9Jc3IgvYf9BcyrguAREXSJjqwBnM181GjAw=s190",
"https://lh6.googleusercontent.com/7O17Dpa3tuzrFzh4KmhtBSz27AM0Vx6fCfD9g58PyRfu_79YBRheki2N6693HMpVNQ=s190",
"https://lh3.googleusercontent.com/suAP6st_mf_0Uwfv1uV1kxwgYRBdmzTgwePp2paqLWlDPtKcpXVJoclY6n3XofKKkQ=s190",
"https://lh6.googleusercontent.com/xEsXl7t-LmyXXboYlwQLKHhPv6Z5Btqv66uTOvvdbIRpdynCx551d15ihDa2eVrBvQ=s190",
"https://lh5.googleusercontent.com/LnFNlpAQvZzQYdLh85NioR582zPWjKxZaV_VMSlC4r7mp2sXcgwt0wuekOJJqwqX4A=s190",
"https://lh4.googleusercontent.com/uhQMB0ZnRRhSW2Cuv90itx0zQ0qrjQwhQlC0LceALg8kopGGjRW9D8RKPkFfTaJI0w=s190",
"https://lh5.googleusercontent.com/YKvTX36sy5Y-qcHEMQ0IKBMLzevL5GoORc9X4DbQ8SaboNElCFviLzmY_Bhm1AHFfA=s190",
"https://lh6.googleusercontent.com/aOHOrYLrnA6BXshPIPlMXFD3z52H15mIFstB8emfcC1HxQI-u8F6utCHtaJQPqcbtw=s190",
"https://lh6.googleusercontent.com/Y5fTalzSqTguH90Yv1ak_D9i4gh03IsEpG0z8bqgP4Ad0AdZTMS7Wd7m0y9d02P4nA=s190",
"https://lh3.googleusercontent.com/wsTdGyXh6dCNV5LkOIcPeADTs87SOlXSgJ_6WbZ08JkS9Ku5peDV9TnPdETmFv-ZHQ=s190",
"https://lh5.googleusercontent.com/4Dsm2QqZ9xfkMSELoZr-uxM47WnoFCQBCrgxH6_nrCBsj1sSA5I6i3I4EPyR9_ivCQ=s190",
"https://lh5.googleusercontent.com/BgV5kbqa1HeYUhXAdoJhQ7k9dUYOvi3NVfz99X8xeKXirCqnDyDe_Y2SbIid9C34zQ=s190",
"https://lh4.googleusercontent.com/oG5xyKpkLMtyEt40tHCE8KJoZLT2ALDdsWCTvOL-9QrYg1A3FFBv8ahTdVLA543GHg=s190",
"https://lh3.googleusercontent.com/DmX9_t47ccU_F49x8SW_w2QkNdmAP6fJwUid1cZyhGGDam16ow_r6krn7PzBDmtq6Q=s190",
"https://lh4.googleusercontent.com/Lz42ak9fE09BxcXG48j81wFfThepe_2OcRQ2BBsJSRBac7_4jOBCNTBygfEiaMmI3g=s190",
"https://lh5.googleusercontent.com/eQ38KuSJypRuLM5du5hky_djkgV6DK2AodmeDHavyJ9705ya0tyXalpXxRpdSVrQ1Q=s190",
"https://lh5.googleusercontent.com/VypSHLnPXqEYZZAPfMCza5ilct-ulauecFxzaMfvJ94yhZtzX6l00bY78odN1AuNVg=s190",
"https://lh6.googleusercontent.com/c7j4QlLXGX05R7V0sUR6httms569BQ2_Fp9DRpgH_YPD4bmiAAXnAdd7vrfRCaq90g=s190",
"https://lh5.googleusercontent.com/xzZncRY4xvCsqmq9IVvpRj1JEixBd80M0B6PqpLNtUe5jBkescXzS1oqFdY5jezJMA=s190",
"https://lh5.googleusercontent.com/f4EcBjy_xbCR-5Zy5sFTVPeRDE4JRO5YCP5vtRCHgYsvDaZ5Y9sPk78xcaO1If4HQg=s190",
"https://lh5.googleusercontent.com/XI_-QKYuwxiSXF8jzzqUnrQSeoK7N3dcQUfgQaRvzIC_-2SJ7ashudzdrSKXhxeiBA=s190",
"https://lh4.googleusercontent.com/Ji-mzES7MK-VT9iLC72-Tp6z0DX9HeVgxkM4XdYA9r3Lkl4ZqVXA5Q0Z01sLxLnbPg=s190",
"https://lh6.googleusercontent.com/GxvkfAZzcV8yUn_c4ClDx_cwXRJxe62TApa4G9-xiCqqUn16T3_Y-eku7l2LL1MTjw=s190",
"https://lh5.googleusercontent.com/4Mv7FtdmfJnTIT-ULJ3-bZwGME-RgNGry-hO8f6aX23zAx-xlpDCYNW0cvsPC8TI7g=s190",
"https://lh6.googleusercontent.com/I0Ayl_jsa9312PB6BZRwNLZ4Cx7xsWpegRXgafPDEn_-OSq5gkAFf4iTGQJIo0yGgg=s190",
"https://lh6.googleusercontent.com/KBdNgzp2Po-Wk7dF1w9BXAt8e0y_uCRtLum0QVo9PZEjlaRHmzwO27KNJ3VPAxqVbw=s190",
"https://lh6.googleusercontent.com/cHszjkFiO36Qq718vJ0EaFi3XWCf5T-6Z1r9J4P203Ao3O8mJYwdfOnGWEOcjPn6Aw=s190",
"https://lh3.googleusercontent.com/jSql4RGcAaOnEyIOSXMU6WXf5OlUIJWLwYmU5xHlNzpZZdcZhaAdCAbD5kwFO8b40g=s190",
"https://lh5.googleusercontent.com/NkWPfxyijL1OKjS__eecDg446-6gRgnQwced2FMNTXlfNAOk_xe1wDsvtvnHYCq66Q=s190",
"https://lh6.googleusercontent.com/U8bRL3ippG8XeeAjcUT5HHOEt6mKGfYmaLpj6rM6fngfFUQXgHrHCsFeOhEZyPB24A=s190",
"https://lh5.googleusercontent.com/XZp-mEQNAynlAh7a8DAnggvyGD9JY6uXlEptf-UXiui1YhDqJq3-ViM4TF45n1hKgw=s190",
"https://lh5.googleusercontent.com/EbZYXwat1rS6wFJukGYF_QrqlB0MpIZPQ47eBSmmY_4xWF3Pi4-h0nfnQ98xjfNEAQ=s190",
"https://lh5.googleusercontent.com/s43Am8n9PQ2vy1Dz1k0yEKCxTSXY-rcAHHgBBGqJkyjBXPleE1SYhNn_fTMDYSwLzg=s190",
"https://lh5.googleusercontent.com/MHVRqxV8hfSU6eKiYfHy1zUEiFciLD-tSLgxpvQ0fRdmIdQfotHS3S2AeCyIPw5ANw=s190",
"https://lh5.googleusercontent.com/uuz-PhrLmAukQ3Mh7KwQK3C26UM4C2qnDu2CPcU6MRQTMFHv_jKlXwmBAD2h1UFeww=s190",
"https://lh5.googleusercontent.com/_N2tEwSE0Qz-GE2bClx2n7otC3pysi_S1w2qeMWAaLBhIgZ7qBvxAOBr57U0t5qqmw=s190",
"https://lh6.googleusercontent.com/G8tkbNHaPdQ3ltXsQnbrSxILfPehnh8tOeom6vm4O3jkFLOpNWLVdrwXxtYe5RF3zQ=s190",
"https://lh5.googleusercontent.com/_uBKWbnyRnlhNi5uhUig1a233PE1oMV1KjFU-a9bxo2GP21NY8QmQ2yolWZXuTCJBw=s190",
"https://lh6.googleusercontent.com/uB1lrEidPfh8fUKj40Q1riAHHSK4F5zw7SFx5KT6lCt0pZvvzFS64ImHV6elcxSWcw=s190",
"https://lh3.googleusercontent.com/n5-RTGLBMLxEeOsUkjt9PXq9KVXKBzXXlf6bHkuY4YwvkWZBSyMjmZXdeC4R8hQSWg=s190",
"https://lh6.googleusercontent.com/bs9hjACUECs9j4EmzGlXwdfOdWaNUBdI6vglzPNKMyRRMRzGIXmU1WO3VLa5SuWobw=s190",
"https://lh6.googleusercontent.com/qoFePeXoXyX6z7OnRsQ1sHuSm4K9t6Q3jqu3eXP1BlLCguJa52LEYvXgk4Z8W_ZFDw=s190",
"https://lh6.googleusercontent.com/2Om3KpcCFh--jdMIUg8xM1nKkkRSm1QB-UKWnda6Hqqfm6b1xD6DjTk-tjw3g7eNxg=s190",
"https://lh4.googleusercontent.com/R2HX0MohlLts7hqaWQugPZ6kWDrS0k6iCCZODy6fUsl6znF5OAvK5l1Q7DOkOiEW8A=s190",
"https://lh6.googleusercontent.com/iNgZvFGUqsdswvDM8Kib1BI3wiIBDnA8vgqOFiOpw9N69TdA80irZfZtQ9qvxMNzyg=s190",
"https://lh6.googleusercontent.com/nFqLAO0shyEbZtR-qve7RD46yvBYaPQ5h5Z3DEKyh3vfEjy-tieg2eNI3APrx2dGlw=s190",
"https://lh3.googleusercontent.com/73BTXN6uZc7ETMDIUITeyX5bjiNpD6njPEguYKX7vXYmEPuhLsNKKnMRfyj6C_kGkw=s190",
"https://lh5.googleusercontent.com/jRcMt9QLWr13990hDSr0BUMejZDdUUmsYUENEfN8TqjTAZSeCocTJLhl5KWczKuVog=s190",
"https://lh5.googleusercontent.com/UJGrS5OO3eDdjAPPYMjzL8O4AYuF66yEHeii48EEan6HLq5lKsoqWw5zi1CcBYplMA=s190",
"https://lh3.googleusercontent.com/b2BOZ2q7k8hlbV5Cy43WFsSR7am8mD1L6vwdoY3Yq9sBLCXKw2ZfXntPA5atF8ma1g=s190",
"https://lh6.googleusercontent.com/LJFRwTwNZlU10PLdjGSPPYh05fyzerG1n7Ih1AkxqCNAYfh_0Gt2gYehzZ5Tdg3NFQ=s190",
"https://lh5.googleusercontent.com/Z784WZwsJtlADMmh9ks49Oocf2okyzsnDHiXSt-ZmLOMEGM0gJ80PWyN56Ll_4rlTQ=s190",
"https://lh3.googleusercontent.com/3bTisS6Or8oSI8yfyYpy6J_BRMc5ReoVQ6Sb6rCEUk9z2ZtaNfqUGPpTHdvfZ8cc2w=s190",
"https://lh4.googleusercontent.com/z0RHTgUfmbUBeblT9ucpvs1g0A65Al5-DXesaIKzl82AWu8KmDzZhapVKxFVilDMHQ=s190",
"https://lh5.googleusercontent.com/ZGYXbKYNSWLiRCBtzHz74-poxiG_pK3dLc3H-WQI5jZtFmdX4sk0lxVvokRjaJBwAQ=s190",
"https://lh6.googleusercontent.com/xVDO-y6VqGsxAo4GoHGtPPMrKP_j8ytrLdbM91MU9AbTlW3rMDR15SMbbV-TPfs9ag=s190",
"https://lh4.googleusercontent.com/e7TIqm2H3jtjYfmgStoSErNuoZnuh0JKSe1Qtt07ZVDcztrpcNAt7aJiPFElCAJGgg=s190",
"https://lh5.googleusercontent.com/WnPjLVa38GBNTPtx9fYNog0sjI4GLmEhLypOxhVkTwb9aPmsfQVQ78FBufYBbI5ROQ=s190",
"https://lh6.googleusercontent.com/aA2exg6a-4XpKfHhYJAHhmaPtkw1PIB6Bhc692VWeRTEtonRW_d_RDhUtE-EQ6Yuaw=s190",
"https://lh6.googleusercontent.com/uEBVIebGBiv38TLxf15jqnF16zy2xbeqIzRiAsaUhXTGDOmEvfUiSVYLq6FSOdxnNw=s190"

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
