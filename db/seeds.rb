puts 'Cleaning the db....'
HauntedHouse.destroy_all

puts 'Creating haunted houses..'
HauntedHouse.create!(
  name: 'Addams Family Mansion',
  banner_url: 'https://assets.inman.com/wp-content/uploads/2018/10/addams-family-movie-1984x880.jpg'
)
puts "... created #{HauntedHouse.count} houses"
