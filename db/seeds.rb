Alien.destroy_all if Rails.env.development?

alien = Alien.new(name: 'Zorg', banner_url: 'https://i.imgur.com/DZdFxS6.jpeg')
alien.save!
