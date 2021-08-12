Alien.destroy_all if Rails.env.development?

alien = Alien.new(name: 'Zorg', banner_url: 'https://i.imgur.com/DZdFxS6.jpeg')
alien.save!

Planet.create!(
  name: "Earth",
  image_url: "https://cdn.mos.cms.futurecdn.net/3upZx2gxxLpW7MBbnKYQLH-1200-80.jpg",
  category: "solid",
  alien: alien
)

Planet.create!(
  name: "Mars",
  image_url: "https://space-facts.com/wp-content/uploads/mars-v2.jpg",
  category: "solid",
  alien: alien
)

Planet.create!(
  name: "Tatooine",
  image_url: "https://static.wikia.nocookie.net/starwars/images/b/b0/Tatooine_TPM.png/revision/latest?cb=20150814063047&path-prefix=ja",
  category: "solid",
  alien: alien
)

Planet.create!(
  name: "Hoth",
  image_url: "https://static.wikia.nocookie.net/starwars/images/8/81/Hoth_AoRCR.png/revision/latest?cb=20170222025915",
  category: "solid",
  alien: alien
)

Planet.create!(
  name: "Coruscant",
  image_url: "https://static.wikia.nocookie.net/starwars/images/1/16/Coruscant-EotE.jpg/revision/latest?cb=20130908205521",
  category: "solid",
  alien: alien
)

Planet.create!(
  name: "Naboo",
  image_url: "https://static.wikia.nocookie.net/starwars/images/4/41/Naboo_FFGRebellion.png/revision/latest?cb=20170529051916",
  category: "solid",
  alien: alien
)

Planet.create!(
  name: "Vulcan",
  image_url: "https://wp-assets.futurism.com/2013/02/200635_414242988662116_1691606020_n.jpg",
  category: "solid",
  alien: alien
)
