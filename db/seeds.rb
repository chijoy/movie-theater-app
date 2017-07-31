# The Movietheater is the movie complex.
# Movietheater.create(name: "Chicago Movie Theater")

# Auditoriums are the individual theaters with the movietheater complex.
# Auditorium.create(movietheater_id: 1)

# Seats belong to an auditorium
# 10.times do
#   Seat.create(
#               auditorium_id: 1,
#               )
# end

# 20.times do
#   Seat.create(
#               auditorium_id: 2,
#               )
# end

# 30.times do
#   Seat.create(
#               auditorium_id: 3,
#               )
# end