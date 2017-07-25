# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




WeeklySchedule.destroy_all
Reservation.destroy_all
Workplace.destroy_all
Kid.destroy_all
User.destroy_all

workplace = Workplace.create!({
  name: "Workplace and Kids",
  address: "12 Rue des Guèpes 44000 Nantes",
  worker_spots: 20,
  kid_spots: 10
}
)

hugo = User.create!({
  first_name: "Hugo",
  last_name: "Daniel",
  email: "hugodaniel@gmail.com",
  address: "40 Quai Magellan 44000 Nantes",
  phone_number: "0645859685",
  profession: "Web Dev",
  beneficiary_number: "498946846",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "59849a8d4z9a8d49",
  admin: false,
  password: "secret"
}
)

michel = Kid.create!({
  user: hugo,
  first_name: "Michel",
  last_name: "Daniel",
  birthday: Date.today
}
)
