puts 'Cleaning the db....'
HauntedHouse.destroy_all

puts 'Creating haunted houses..'
house = HauntedHouse.create!(
  name: 'Addams Family Mansion',
  banner_url: 'https://assets.inman.com/wp-content/uploads/2018/10/addams-family-movie-1984x880.jpg'
)
puts "... created #{HauntedHouse.count} houses"

puts 'Creating monsters..'
Monster.create!(
  name: 'Wednesday',
  image_url: 'https://i.guim.co.uk/img/media/412f16de99c54b5a06aa95d8203c351b10b28985/493_0_3000_1800/master/3000.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=e8bc1a9a7e857e6a714ecdd1e14b8123',
  haunted_house: house
)

Monster.create!(
  name: 'Moth Man',
  image_url: 'https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_1687,w_3000,x_0,y_0/dpr_1.5/c_limit,w_1600/fl_lossy,q_auto/v1603077268/201016-mothman-tease_qcyuyx',
  haunted_house: house
)

Monster.create!(
  name: 'Yann',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/c_fill,g_face/7jTDPipAwMTY6maAxPMf1z1z',
  haunted_house: house
)

Monster.create!(
  name: 'Godzilla',
  image_url: 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/09/Godzilla-vs-Gigan-Rex-header.jpg',
  haunted_house: house
)

Monster.create!(
  name: 'King Kong',
  image_url: 'https://statcdn.fandango.com/MPX/image/NBCU_Fandango/354/139/KingKong_KongBattlesTRex.jpg',
  haunted_house: house
)

Monster.create!(
  name: 'Mike',
  image_url: 'https://static.voices.com/wp-content/uploads/2022/11/ct_videoportal_pixar_mikewazoski_ddt-16832_a98c6c65-e1668010260123.jpeg',
  haunted_house: house
)

Monster.create!(
  name: 'Nessie',
  image_url: 'https://ichef.bbci.co.uk/news/1024/cpsprodpb/4B11/production/_107971291_nessie.jpg',
  haunted_house: house
)

Monster.create!(
  name: 'Cousin Itt',
  image_url: 'https://media.tenor.com/wjLjgMQ8qDIAAAAC/cousin-itt-addams-family.gif',
  haunted_house: house
)

Monster.create!(
  name: 'Beast',
  image_url: 'https://images.squarespace-cdn.com/content/v1/54fc8146e4b02a22841f4df7/1673224151726-NLZB1FWE1X9TFCWAK1T1/cover1.jpg',
  haunted_house: house
)



puts "... created #{Monster.count} monsters"
