# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Movie.create(
	name: 'Star Wars: Episode IV - A New Hope',
	avg_rating: 100,
	description: "The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess "\
				"Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic "\
				"Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium "\
				"Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony "\
				"Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and "\
				"justice to the Galaxy."
	)
transformers=Movie.create(name: 'Transformers', avg_rating: 0)
john=Critic.create(
	name: 'John Doe',
	bio: "I'm Joe. I like movies. I like movies. I like movies. I like movies. I like movies. I like movies. "\
		"I like movies. I like movies. I like movies. I like movies. I like movies. I like movies. I like "\
		"movies. I like movies. I like movies. I like movies. I like movies. I like movies. I like movies."
	)
r=Review.create(
	rating: '3',
	text: "Movie was pretty cool"
	)
r.critic=john
r.movie=transformers
r.save!
bob=Critic.create(
	name: 'Bob Doe',
	bio: "I'm Bob. I like movies. My favorite movie is Bob The Builder. Can we fix it? Yes we can."
	)
moana=Movie.create(name: 'Moana', avg_rating: 100, description: "Another disney princess movie")

r2=Review.create(
	rating: '5',
	text: "10/10"
	)
r2.critic=bob
r2.movie=moana
r2.save!
r3=Review.create(
	rating: '5',
	text: "999/10"
	)
r3.critic=john
r3.movie=moana
r3.save!