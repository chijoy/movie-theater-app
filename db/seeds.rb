# The Movietheater is the movie complex.
# Movietheater.create(name: "Chicago Movie Theater")

# Auditoriums are the individual theaters with the movietheater complex.
# Auditorium.create(movietheater_id: 1)

# Seats belong to an auditorium
Auditorium.create(movietheater_id: 1)


CategoryProduct.create!([
  {category_id: 1, product_id: 2},
  {category_id: 1, product_id: 4},
  {category_id: 1, product_id: 7},
  {category_id: 2, product_id: 1},
  {category_id: 2, product_id: 2},
  {category_id: 2, product_id: 4},
  {category_id: 2, product_id: 7},
  {category_id: 3, product_id: 5},
  {category_id: 3, product_id: 6},
  {category_id: 1, product_id: 3},
  {category_id: 1, product_id: 5},
  {category_id: 2, product_id: 5},
  {category_id: 2, product_id: 6}

  200.times do
  Address.create(
                address_1: Faker::Address.street_address,
                address_2: Faker::Address.secondary_address,
                city: Faker::Address.city,
                state: Faker::Address.state,
                zip: Faker::Address.zip,
                employee_id: Employee.all.sample.id
    )
end