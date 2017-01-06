# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Student.delete_all
Pitchday.delete_all
Pitch.delete_all
Round.delete_all
Preference.delete_all

u = User.create(username:"Katee", email:"katee@katee.com", password_digest:"katee")
pd =  u.pitchdays.create(cohort:"Jackrabbits", size:20)
j = Student.create(full_name:"Jen Young", phase_num: 3)
a = Student.create(full_name:"Anthony Tokatly", phase_num: 3)
k = Student.create(full_name:"Katee Trant", phase_num: 3)
p = j.pitches.create(title:"Ripe?", description:"pure awesome",pitchday_id:1, final:true)
ppd = k.pitches.create(title:"Bruh?", description:"What up bruh",pitchday_id:1, final:true)
a.pitches.create(title:"Caillou?", description:"is just awful",pitchday_id:1, final:false)
pd.rounds.create(round_num:1, active_round:false)
pd.rounds.create(round_num:2, active_round:true)
Preference.create(rank:1, student_id: 1, pitch_id: 1, round_id:1)
Preference.create(rank:2, student_id: 1, pitch_id: 2, round_id:1)
Preference.create(rank:3, student_id: 1, pitch_id: 3, round_id:1)
Preference.create(rank:1, student_id: 2, pitch_id: 1, round_id:1)
Preference.create(rank:2, student_id: 2, pitch_id: 2, round_id:1)
Preference.create(rank:3, student_id: 2, pitch_id: 3, round_id:1)
Preference.create(rank:1, student_id: 3, pitch_id: 1, round_id:1)
Preference.create(rank:2, student_id: 3, pitch_id: 2, round_id:1)
Preference.create(rank:3, student_id: 3, pitch_id: 3, round_id:1)

Preference.create(rank:2, student_id: 1, pitch_id: 1, round_id:1)
Preference.create(rank:1, student_id: 1, pitch_id: 2, round_id:1)
Preference.create(rank:1, student_id: 2, pitch_id: 2, round_id:1)
Preference.create(rank:2, student_id: 2, pitch_id: 1, round_id:1)
Preference.create(rank:1, student_id: 3, pitch_id: 1, round_id:1)
Preference.create(rank:2, student_id: 3, pitch_id: 2, round_id:1)
