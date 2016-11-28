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
Movie.create(name: 'Transformers', avg_rating: 0)
Critic.create(name: 'Joe', bio: "I'm Joe. I like movies.")
Critic.create(name: 'Rob', bio: "I'm Rob. I like movies.")
Critic.create(name: 'Moe', bio: "I'm Moe. I like movies.")
Critic.create(name: 'Bob', bio: "I'm Bob. I like movies.")
