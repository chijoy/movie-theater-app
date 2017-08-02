# The Movietheater is the movie complex.
Movietheater.create(name: "Chicago Movie Theater")

# Auditoriums are the individual theaters with the movietheater complex.
Auditorium.create(movietheater_id: 1)
Auditorium.create(movietheater_id: 1)
Auditorium.create(movietheater_id: 1)

# Seats belong to an auditorium
10.times do
  Seat.create(
              auditorium_id: 1,
              )
end

20.times do
  Seat.create(
              auditorium_id: 2,
              )
end

30.times do
  Seat.create(
              auditorium_id: 3,
              )
end

Movie.create(
              auditorium_id: 1,
              title: "Guardians of the Galaxy Vol 2",
              rating: "PG-13",
              female_lead: "Zoe Saldana",
              male_lead: "Chris Pratt",
              year_released: 2017,
              run_time: 138
              )

Movie.create(
              auditorium_id: 2,
              title: "Deadpool",
              rating: "R",
              female_lead: "Morena Baccarin",
              male_lead: "Ryan Reynolds",
              year_released: 2016,
              run_time: 108
              )

Movie.create(
              auditorium_id: 3,
              title: "Wonder Woman",
              rating: "PG-13",
              female_lead: "Gal Gadot",
              male_lead: "Chris Pine",
              year_released: 2017,
              run_time: 141
              )

Showtime.create(
                movie_id: 1,
                start_time: DateTime.strptime("14:00", "%H:%M"),
                end_time: DateTime.strptime("16:00", "%H:%M"),
                start_show_date: DateTime.new(2017, 9, 1),
                end_show_date: DateTime.new(2017, 9, 29)
                )

Showtime.create(
                movie_id: 2,
                start_time: DateTime.strptime("20:00", "%H:%M"),
                end_time: DateTime.strptime("23:00", "%H:%M"),
                start_show_date: DateTime.new(2017, 9, 1),
                end_show_date: DateTime.new(2017, 9, 29)
                )

Showtime.create(
                movie_id: 3,
                start_time: DateTime.strptime("19:00", "%H:%M"),
                end_time: DateTime.strptime("21:30", "%H:%M"),
                start_show_date: DateTime.new(2017, 9, 1),
                end_show_date: DateTime.new(2017, 9, 29)
                )

User.create(
            movietheater_id: 1,
            first_name: "admin",
            last_name: "admin",
            email: "admin@gmail.com",
            phone: "773-555-1212",
            birthdate: DateTime.new(2000, 1, 1),
            password_digest: "password",
            user_type: "Admin"
            )

User.create(
            movietheater_id: 1,
            first_name: "first",
            last_name: "customer",
            email: "firstcustomer@gmail.com",
            phone: "773-555-1213",
            birthdate: DateTime.new(2000, 1, 1),
            password_digest: "password",
            user_type: "Customer"
            )

User.create(
            movietheater_id: 1,
            first_name: "first",
            last_name: "employee",
            email: "firstemployee@gmail.com",
            phone: "773-555-1213",
            birthdate: DateTime.new(2000, 1, 1),
            password_digest: "password",
            user_type: "Employee"
            )

Order.create(
            user_id: 2
            )

Order.create(
            user_id: 3
            )