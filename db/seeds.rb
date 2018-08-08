require 'faker'
Restaurant.destroy_all
Review.destroy_all

resto = Restaurant.new(
  name: 'McDo',
  address: 'Nantes',
  phone_number: '04 22 34 12 26',
  category: 'fast food'
  )
resto.save
review = Review.new(
  content: 'Pas mal',
  rating: 4
  )
review.restaurant = resto
review.save

resto = Restaurant.new(
  name: "La Tour d'Argent",
  address: 'Paris',
  phone_number: '01 22 65 12 99',
  category: 'Gastronomique'
  )
resto.save
review = Review.new(
  content: 'Bof',
  rating: 2
  )
review.restaurant = resto
review.save
