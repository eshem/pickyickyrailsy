require 'faker'

a = [true, false]
a.sample

20.times do 
	User.create(name: Faker::Name.name, email: Faker::Internet.email, password: 'eric', tier: 0)
end

User.create(name: "Admin", email: "admin@admin.com", password: "eric", tier: 1)

6.times do 
	Game.create(team1: "Jets", team2: Faker::Address.state, spread: rand(-3..3), week: rand(1..3) )
end

3.times do
	Pick.create(selection: Faker::Address.state, week: rand(1..3), winner: a.sample, user_id: 2 )
end

3.times do
	Pick.create(selection: Faker::Address.state, week: rand(1..3), winner: a.sample, user_id: 3 )
end

3.times do
	Pick.create(selection: Faker::Address.state, week: rand(1..3), winner: a.sample, user_id: 4 )
end


10.times do
	Pick.create(selection: "Jets", week: rand(1..3), winner: a.sample )
end