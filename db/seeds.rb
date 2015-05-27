# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  {
    email: "user1@example.com", 
    password: "password"
  },
    {
    email: "user2@example.com", 
    password: "password" 
  },
    {
    email: "user3@example.com", 
    password: "password" 
  },
    {
    email: "user4@example.com", 
    password: "password"
  },
  {
    email: "user5@example.com", 
    password: "password"
  }
])

Competitor.create!([
  {
    name: 'Competitor1', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA', 
    zip: '98004', 
    country: 'USA', 
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')), 
    user_id: 1, 
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform", 
    weaknesses: "Products don't scale well", 
    opportunities: "Not strong in Latin America",  
    threats: "Rumors of a mobile app", 
    url: "http://competitor1.com", 
    employees: 1500, 
    market_cap: "$1 billion",  
    stock_symbol: "COMP1", 
    CEO: "Jack Smith" 
  },
    {
    name: 'Competitor2', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA', 
    zip: '98004', 
    country: 'USA', 
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')), 
    user_id: 1, 
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform", 
    weaknesses: "Products don't scale well", 
    opportunities: "Not strong in Latin America",  
    threats: "Rumors of a mobile app", 
    url: "http://competitor2.com", 
    employees: 1500, 
    market_cap: "$1 billion",  
    stock_symbol: "COMP2", 
    CEO: "Jack Smith" 
  },
    {
    name: 'Competitor3', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA', 
    zip: '98004', 
    country: 'USA', 
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')), 
    user_id: 1, 
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform", 
    weaknesses: "Products don't scale well", 
    opportunities: "Not strong in Latin America",  
    threats: "Rumors of a mobile app", 
    url: "http://competitor3.com", 
    employees: 1500, 
    market_cap: "$1 billion",  
    stock_symbol: "COMP3", 
    CEO: "Jack Smith" 
  },
    {
    name: 'Competitor4', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA', 
    zip: '98004', 
    country: 'USA', 
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')), 
    user_id: 1, 
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform", 
    weaknesses: "Products don't scale well", 
    opportunities: "Not strong in Latin America",  
    threats: "Rumors of a mobile app", 
    url: "http://competitor4.com", 
    employees: 1500, 
    market_cap: "$1 billion",  
    stock_symbol: "COMP4", 
    CEO: "Jack Smith" 
  },
    {
    name: 'Competitor5', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA', 
    zip: '98004', 
    country: 'USA', 
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')), 
    user_id: 1, 
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform", 
    weaknesses: "Products don't scale well", 
    opportunities: "Not strong in Latin America",  
    threats: "Rumors of a mobile app", 
    url: "http://competitor5.com", 
    employees: 1500, 
    market_cap: "$1 billion",  
    stock_symbol: "COMP5", 
    CEO: "Jack Smith" 
  },
    {
    name: 'Competitor6', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA', 
    zip: '98004', 
    country: 'USA', 
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')), 
    user_id: 1, 
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform", 
    weaknesses: "Products don't scale well", 
    opportunities: "Not strong in Latin America",  
    threats: "Rumors of a mobile app", 
    url: "http://competitor6.com", 
    employees: 1500, 
    market_cap: "$1 billion",  
    stock_symbol: "COMP6", 
    CEO: "Jack Smith" 
  },
    {
    name: 'Competitor7', 
    description: 'A big scary competitor', 
    address: '333 108th Ave NE',
    city: "Bellevue", 
    state: 'WA',
    zip: '98004',
    country: 'USA',
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')),
    user_id: 1,
    key_products: "Competitor1 Product1, Competitor1 Product2, Competitor1 Product3",
    strengths: "Great A/B testing platform",
    weaknesses: "Products don't scale well",
    opportunities: "Not strong in Latin America",
    threats: "Rumors of a mobile app",
    url: "http://competitor7.com",
    employees: 1500,
    market_cap: "$1 billion",
    stock_symbol: "COMP7",
    CEO: "Jack Smith" 
  }
])

Product.create!([
  {
    name: "Product 1",
    description: "Product 1 does amazing things",
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')),
    user_id: 1
  },
  {
    name: "Product 2",
    description: "Product 2 does amazing things",
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')),
    user_id: 1
  },
    {
    name: "Product 3",
    description: "Product 3 does amazing things",
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')),
    user_id: 1
  },
  {
    name: "Product 4",
    description: "Product 4 does amazing things",
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')),
    user_id: 1
  },
  {
    name: "Product 5",
    description: "Product 5 does amazing things",
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')),
    user_id: 1
  }
])

Idea.create!([
  {
    name: "This is great idea 1", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 2", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 3", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 4", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 5", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 6", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 7", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  },
    {
    name: "This is great idea 8", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png'))
  },
    {
    name: "This is great idea 9", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png'))
  },
    {
    name: "This is great idea 10", 
    description: "This will be the greates thing since slided bread.",
    user_id: 1,
    image: File.open(File.join(Rails.root, 'app/assets/images/default.png')) 
  }
  ])
