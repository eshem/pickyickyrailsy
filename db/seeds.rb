require 'faker'

a = [true, false]
a.sample

5.times do 
	User.create(name: Faker::Name.name, email: Faker::Internet.email, password: 'eric', tier: 0, wins: 10, losses: 20)
end

User.create(name: "Admin", email: "admin@admin.com", password: "eric", tier: 1)

2.times do 
	Game.create(team1: "Jets", team2: Faker::Address.state, spread: rand(-3..3), week: rand(1..3) )
end

3.times do
	Pick.create(selection: (Game.last.team2), week: (Game.last.week), user_id: 2, game_id: 1)
end

3.times do
	Pick.create(selection: (Game.last.team1), week: (Game.last.week), user_id: 3, game_id: 2)
end

3.times do
	Pick.create(selection: (Game.first.team2), week: (Game.first.week), user_id: 4, game_id: 2)
end

10.times do
	Pick.create(selection: (Game.first.team1), week: (Game.first.week), user_id: 5, game_id: 2 )
end