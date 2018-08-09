Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]

restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     categories.sample
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     categories.sample
  },
  {
    name:         'Wendys',
    address:      'Berlin 123',
    category:     categories.sample
  },
  {
    name:         'Steves Pizza',
    address:      '121 Biscayne, Miami, FL',
    category:     categories.sample
  },
  {
    name:         'Mammouns',
    address:      'Somewhere in New York',
    category:     categories.sample
  }
]

Restaurant.create!(restaurants_attributes)
