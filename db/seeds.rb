# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Student.destroy_all
# Pitchday.destroy_all
# Pitch.destroy_all
# Round.destroy_all
# Preference.destroy_all

u = User.create(username:"Katee", email:"katee@katee.com", password_digest:"katee")
pd =  u.pitchdays.create(cohort:"Jackrabbits", size:20)
j = Student.create(full_name:"Jen Young", phase_num: 3)
a = Student.create(full_name:"Anthony Tokatly", phase_num: 3)
p = j.pitches.create(title:"Ripe?", description:"pure awesome", final:true)
r = pd.rounds.create(round_num:1)
pref = Preference.create(rank:2, student_id: 1, pitch_id: 1, round_id:1)
