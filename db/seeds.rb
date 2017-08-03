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
ClientDatum.destroy_all
User.destroy_all

workplace = Workplace.create!({
  name: "Workplace and Kids",
  address: "12 Rue des Guèpes 44000 Nantes",
  worker_spots: 20,
  kid_spots: 10
}
)

demo = User.create!({
  email: 'thomas.perouze@gmail.com',
  admin: false,
  password: 'secret',
  })

admin = User.create!({
  email: 'admin@workplaceandkids.fr',
  admin: true,
  password: 'workplace',
  remote_profile_pic_url: 'https://cdn2.iconfinder.com/data/icons/danger-problems/512/anonymous-512.png'
  })

hugo = User.create!({
  email: "hugodaniel@gmail.com",
  admin: false,
  password: "secret",
  remote_profile_pic_url: 'http://static.tvtropes.org/pmwiki/pub/images/calvin2_834.jpg'
}
)

hugodata = ClientDatum.create!({
  user: hugo,
  father_first_name: "Hugo",
  father_last_name: "Daniel",
  father_address: "40 Quai Magellan 44000 Nantes",
  father_phone_number: "0645859685",
  father_profession: "Web Dev",
  mother_first_name: "Marie-Jeanne",
  mother_last_name: "Daniel",
  mother_address: "40 Quai Magellan 44000 Nantes",
  mother_phone_number: "0645652536",
  mother_profession: "Agricultrice",
  beneficiary_number: "498946846",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "59849a8d4z9a8d49"
}
)

thomas = User.create!({
  email: "thomasperouze@gmail.com",
  admin: false,
  password: "secret",
  remote_profile_pic_url: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAguAAAAJDFmZWJkMzJhLWM3YTgtNGE3Zi05NGY0LTFiZjQ1ZmI4ODA2Zg.jpg'
  })

thomasdata = ClientDatum.create!({
  user: thomas,
  father_first_name: "Thomas",
  father_last_name: "Perouze",
  father_address: "12 Avenue des Abeilles 44000 Nantes",
  father_phone_number: "0645859686",
  father_profession: "Entrepreneur",
  mother_first_name: "Juanita",
  mother_last_name: "Perouze",
  mother_address: "12 Avenue des Abeilles 44000 Nantes",
  mother_phone_number: "0645656595",
  mother_profession: "Perchiste",
  beneficiary_number: "498946506",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "4654654adzad65465"
}
)

vincent = User.create!({
  email: "vincent.hr@gmail.com",
  admin: false,
  password: "secret",
  remote_profile_pic_url: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAeeAAAAJDgxNjEwMzFlLTQwNjEtNGI4NC04YjI3LTE2NWI3Njc5OTBjNw.jpg'
})

vincentdata = ClientDatum.create!({
  user: vincent,
  father_first_name: "Vincent",
  father_last_name: "Henry-Roger",
  father_address: "1000 Quai du Lynx 44000 Nantes",
  father_phone_number: "0645859687",
  father_profession: "Web Dev",
  mother_first_name: "Perrine",
  mother_last_name: "Henry-Roger",
  mother_address: "40 Quai Magellan 44000 Nantes",
  mother_phone_number: "0645656525",
  mother_profession: "Web Dev",
  beneficiary_number: "498456846",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "58549a8d4z9a8d49"
}
)

gus = User.create!({
  email: "gusferaud@gmail.com",
  admin: false,
  password: "secret",
  remote_profile_pic_url: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAArmAAAAJDI5N2ZhNDMyLTg2ZDctNDg0My1hZDU1LWI2ODZmZjBiYmNmYQ.jpg'
}
)

gusdata = ClientDatum.create!({
  user: gus,
  father_first_name: "Gus",
  father_last_name: "Feraud",
  father_address: "42 Quai Magellan 44000 Nantes",
  father_phone_number: "0645859785",
  father_profession: "Freelancer",
  mother_first_name: "Mariette",
  mother_last_name: "Feraud",
  mother_address: "42 Quai Magellan 44000 Nantes",
  mother_phone_number: "0645652236",
  mother_profession: "PDG @DOJO Nantes",
  beneficiary_number: "498946446",
  insurance_name: "MAAF",
  insurance_address: "Nantes",
  insurance_policy: "59849a8d5z9a8d49"
}
)

constantin = User.create!({
  email: "constantin.pahl@gmail.com",
  admin: false,
  password: "secret1",
  remote_profile_pic_url: 'https://avatars2.githubusercontent.com/u/28560816?v=4&s=400'
}
)

constantindata = ClientDatum.create!({
  user: constantin,
  father_first_name: "Constantin",
  father_last_name: "Pahl",
  father_address: "48 Quai Megalent 44000 Nantes",
  father_phone_number: "0655859685",
  father_profession: "Web Dev",
  mother_first_name: "Elise",
  mother_last_name: "Pahl",
  mother_address: "48 Quai Megalent 44000 Nantes",
  mother_phone_number: "0645654536",
  mother_profession: "Etudiante",
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
  birthday: Date.today - 5.week
}
)

rhugo = Reservation.create!({
  number_of_weeks: 10,
  user: hugo,
  workplace: workplace,
  starting_day: Date.new(2017, 07, 31),
  status: "Acceptée"
}
)

rvincent = Reservation.create!({
  number_of_weeks: 8,
  user: vincent,
  workplace: workplace,
  starting_day: Date.new(2017, 07, 31),
  status: "Acceptée"
}
)

rthomas = Reservation.create!({
  number_of_weeks: 15,
  user: thomas,
  workplace: workplace,
  starting_day: Date.new(2017, 07, 31),
  status: "Pending"
}
)

rgus = Reservation.create!({
  number_of_weeks: 11,
  user: gus,
  workplace: workplace,
  starting_day: Date.new(2017, 07, 31),
  status: "Pending"
}
)

rconstantin = Reservation.create!({
  number_of_weeks: 16,
  user: constantin,
  workplace: workplace,
  starting_day: Date.new(2017, 07, 31),
  status: "Acceptée"
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
