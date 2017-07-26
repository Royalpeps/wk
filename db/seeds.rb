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
  email: "hugodaniel@gmail.com",
  admin: false,
  password: "secret"
}
)

hugodata = ClientDatum.create!({
  user: hugo,
  first_name: "Hugo",
  last_name: "Daniel",
  address: "40 Quai Magellan 44000 Nantes",
  phone_number: "0645859685",
  profession: "Web Dev",
  beneficiary_number: "498946846",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "59849a8d4z9a8d49"
}
)

thomas = User.create!({
  email: "thomasperouze@gmail.com",
  admin: false,
  password: "secret"
  })

thomasdata = ClientDatum.create!({
  user: thomas,
  first_name: "Thomas",
  last_name: "Perouze",
  address: "12 Avenue des Abeilles 44000 Nantes",
  phone_number: "0645859686",
  profession: "Entrepreneur",
  beneficiary_number: "498946506",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "4654654adzad65465"
}
)

vincent = User.create!({
  email: "vhrvhr@gmail.com",
  admin: false,
  password: "secret"

vincentdata = ClientDatum.create!({
  user: vincent,
  first_name: "Vincent",
  last_name: "HR",
  address: "1000 Quai du Lynx 44000 Nantes",
  phone_number: "0645859687",
  profession: "Web Dev",
  beneficiary_number: "498456846",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "58549a8d4z9a8d49"
}
)

gus = User.create!({
  email: "gusferaud@gmail.com",
  admin: false,
  password: "secret"
}
)

gusdata = User.create!({
  user: gus,
  first_name: "Gus",
  last_name: "Feraud",
  address: "42 Quai Magellan 44000 Nantes",
  phone_number: "0645859785",
  profession: "Freelancer",
  beneficiary_number: "498946446",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "59849a8d5z9a8d49"
}
)

constantin = User.create!({
  email: "consti11@gmail.com",
  admin: false,
  password: "secret"
}
)

constantin = User.create!({
  user: constantin,
  first_name: "Constantin",
  last_name: "Pahl",
  address: "48 Quai Megalent 44000 Nantes",
  phone_number: "0655859685",
  profession: "Web Dev",
  beneficiary_number: "898946846",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "59949a8d4z9a8d49"
}
)

michel = Kid.create!({
  user: hugo,
  first_name: "Michel",
  last_name: "Daniel",
  birthday: Date.today
}
)

roger = Kid.create!({
  user: thomas,
  first_name: "Roger",
  last_name: "Perouze",
  birthday: Date.today
}
)
juan = Kid.create!({
  user: vincent,
  first_name: "Juan",
  last_name: "Henry-Roger",
  birthday: Date.today
}
)
esteban = Kid.create!({
  user: gus,
  first_name: "Esteban",
  last_name: "Feraud",
  birthday: Date.today
}
)
esmeralda = Kid.create!({
  user: constantin,
  first_name: "Esmeralda",
  last_name: "Pahl",
  birthday: Date.today
}
)

rhugo = Reservation.create!({
  number_of_weeks: 10,
  user: hugo,
  workplace: workplace
}
)

rvincent = Reservation.create!({
  number_of_weeks: 8,
  user: vincent,
  workplace: workplace
}
)

rthomas = Reservation.create!({
  number_of_weeks: 15,
  user: thomas,
  workplace: workplace
}
)

rgus = Reservation.create!({
  number_of_weeks: 11,
  user: gus,
  workplace: workplace
}
)

rconstantin = Reservation.create!({
  number_of_weeks: 16,
  user: constantin,
  workplace: workplace
}
)

weekhugo = WeeklySchedule.create!({
  reservation: rhugo,
  worker_monday_morning: true,
  worker_monday_afternoon: false,
  worker_tuesday_morning: true,
  worker_tuesday_afternoon: false,
  worker_wednesday_morning: true,
  worker_wednesday_afternoon: false,
  worker_thursday_morning: false,
  worker_thursday_afternoon: true,
  worker_friday_morning: false,
  worker_friday_afternoon: true
}
)

weekthomas = WeeklySchedule.create!({
  reservation: rthomas,
  worker_monday_morning: false,
  worker_monday_afternoon: false,
  worker_tuesday_morning: false,
  worker_tuesday_afternoon: false,
  worker_wednesday_morning: true,
  worker_wednesday_afternoon: true,
  worker_thursday_morning: true,
  worker_thursday_afternoon: true,
  worker_friday_morning: true,
  worker_friday_afternoon: true
}
)

weekvincent = WeeklySchedule.create!({
  reservation: rvincent,
  worker_monday_morning: true,
  worker_monday_afternoon: true,
  worker_tuesday_morning: true,
  worker_tuesday_afternoon: true,
  worker_wednesday_morning: false,
  worker_wednesday_afternoon: false,
  worker_thursday_morning: false,
  worker_thursday_afternoon: false,
  worker_friday_morning: true,
  worker_friday_afternoon: true
}
)

weekgus = WeeklySchedule.create!({
  reservation: rgus,
  worker_monday_morning: false,
  worker_monday_afternoon: false,
  worker_tuesday_morning: false,
  worker_tuesday_afternoon: true,
  worker_wednesday_morning: true,
  worker_wednesday_afternoon: true,
  worker_thursday_morning: false,
  worker_thursday_afternoon: true,
  worker_friday_morning: false,
  worker_friday_afternoon: true
}
)

weekconstantin = WeeklySchedule.create!({
  reservation: rconstantin,
  worker_monday_morning: false,
  worker_monday_afternoon: false,
  worker_tuesday_morning: false,
  worker_tuesday_afternoon: false,
  worker_wednesday_morning: true,
  worker_wednesday_afternoon: false,
  worker_thursday_morning: true,
  worker_thursday_afternoon: true,
  worker_friday_morning: false,
  worker_friday_afternoon: true
}
)
