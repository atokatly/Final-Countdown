# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
kt = User.create(username:"Katee", email:"katee@katee.com", crypted_password:"katee")


pd =  kt.pitchdays.create(cohort:"Jackrabbits", size:20)
round = pd.rounds.create(round_num:2)
j = Student.create(full_name:"Jen Young", phase_num: 3, team_id:1)
a = Student.create(full_name:"Anthony Tokatly", phase_num: 3, team_id:1)
i = Student.create(full_name:"Ibraheem Abdul-Malik", phase_num: 3, team_id:2)
kmo = Student.create(full_name:"Katie O'Neill ", phase_num: 3, team_id:2)
p = j.pitches.create(title:"Ripe?", description:"pure awesome", final:true)
p = i.pitches.create(title:"Caillou", description:"he's awful", final:true)
