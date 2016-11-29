# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

test=Viewer.create(name: "j", email: "1@gmail.com")
#################################################### Movies ####################################################

starwars = Movie.create(
    name: "Star Wars: Episode IV - A New Hope",
    avg_rating: 93,
    description: "The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess "\
                "Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic "\
                "Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium "\
                "Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony "\
                "Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and "\
                "justice to the Galaxy."
    )

transformers = Movie.create(
    name: "Transformers",
    avg_rating: 57,
    description: "The fate of humanity is at stake when two races of robots, the good Autobots and the "\
                "villainous Decepticons, bring their war to Earth. The robots have the ability to change into "\
                "different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam "\
                "Witwicky (Shia LaBeouf) can save the world from total destruction."
    )

moana = Movie.create(
    name: "Moana",
    avg_rating: 98,
    description: "An adventurous teenager sails out on a daring mission to save her people. During her journey, "\
                "Moana meets the once-mighty demigod Maui, who guides her in her quest to become a master "\
                "way-finder. Together they sail across the open ocean on an action-packed voyage, encountering "\
                "enormous monsters and impossible odds. Along the way, Moana fulfills the ancient quest of her "\
                "ancestors and discovers the one thing she always sought: her own identity."
    )

godfather = Movie.create(
    name: "The Godfather",
    avg_rating: 99,
    description: "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's "\
                "novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone "\
                "(Marlon Brando). When the don's youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he "\
                "becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to "\
                "maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the "\
                "family business."
    )

lotr = Movie.create(
    name: "The Lord of the Rings: The Fellowship of the Ring",
    avg_rating: 91,
    description: "The future of civilization rests in the fate of the One Ring, which has been lost for centuries. "\
                "Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young "\
                "Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task "\
                "lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount "\
                "Doom where it was forged."
    )

citizenkane = Movie.create(
    name: "Citizen Kane",
    avg_rating: 100,
    description: "When a reporter is assigned to decipher newspaper magnate Charles Foster Kane's (Orson Welles) dying "\
                "words, his investigation gradually reveals the fascinating portrait of a complex man who rose from "\
                "obscurity to staggering heights. Though Kane's friend and colleague Jedediah Leland (Joseph Cotten), and "\
                "his mistress, Susan Alexander (Dorothy Comingore), shed fragments of light on Kane's life, the reporter "\
                "fears he may never penetrate the mystery of the elusive man's final word, 'Rosebud.'"
    )

tdk = Movie.create(
    name: "The Dark Knight",
    avg_rating: 94,
    description: "With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman "\
                "(Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal "\
                "calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to "\
                "tread a fine line between heroism and vigilantism."
    )

social = Movie.create(
    name: "The Social Network",
    avg_rating: 96,
    description: "In 2003, Harvard undergrad and computer genius Mark Zuckerberg (Jesse Eisenberg) begins work on a new "\
                "concept that eventually turns into the global social network known as Facebook. Six years later, he is one "\
                "of the youngest billionaires ever, but Zuckerberg finds that his unprecedented success leads to both personal "\
                "and legal complications when he ends up on the receiving end of two lawsuits, one involving his former friend "\
                "(Andrew Garfield). Based on the book 'The Accidental Billionaires.'"
    )

idr = Movie.create(
    name: "Independence Day: Resurgence",
    avg_rating: 31,
    description: "As the Fourth of July nears, satellite engineer David Levinson (Jeff Goldblum) investigates a 3,000-mile-wide "\
                "mother ship that's approaching Earth. Fortunately, 20 years earlier, nations across the world started to use "\
                "recovered extraterrestrial technology to develop an immense defense program. When the alien invaders attack "\
                "with unprecedented force, the U.S. president, teams of scientists and brave fighter pilots spring into action to "\
                "save the planet from a seemingly invincible enemy."
    )

#################################################### Critics ####################################################

john = Critic.create(
    name: "John Doe",
    bio: "Doe. John Doe. Pleasure to meet you."
    )

bob = Critic.create(
    name: "Bob Doe",
    bio: "I'm Bob. I like movies. My favorite movie is Bob The Builder. Can we fix it? Yes we can."
    )

luke = Critic.create(
    name: "Luke Smith",
    bio: "My father named me after Luke Skywalker after he saw Star Wars in that fateful May of 1977. When I first saw it, I knew "\
        "film was my calling. Star Wars is more than a movie. More than a franchise. More than toys. It's a way of life."
    )

jean = Critic.create(
    name: "Jean-Pierre Jacques",
    bio: "A good film is the highest art--a perfect symphony of visuals, score, and thespian ability."
    )

donald = Critic.create(
    name: "Donald Trump",
    bio: "I'm going to make movies great again. My favorite movie is Home Alone 2, which I star in. It's great, let me tell you. "\
        "Everyone tells me that I'm just great in it."\
    )

#################################################### Reviews ####################################################

r1 = Review.create(
    rating: 48,
    text: "Awful. The movie is a 2 and a half hour long CGI fest that feels like 5 hours. It's one-dimensional, headache-inducing "\
        "Hollywood drivel, saved somewhat by cool-looking cars. I can't imagine there won't be four sequels. God help us."
    )
r1.critic = john
r1.movie = transformers
r1.save!

r2 = Review.create(
    rating: 95,
    text: "Another out-of-the-park hit by Disney. Beautiful animation, fantastic story, lovable characters, and memorable music. We "\
        "may have another 'Let It Go' on our hands, folks. Brace yourselves. The film suffers from some pacing issues, dragging "\
        "somewhat in the second act."
    )
r2.critic = bob
r2.movie = moana
r2.save!

r3 = Review.create(
    rating: 93,
    text: "Well done. The Rock stands out as usual, and the actress voicing Moana is fantastic. Disney succeeds with its animation "\
        "and music production as always."
    )
r3.critic = john
r3.movie = moana
r3.save!

r4 = Review.create(
    rating: 100,
    text: "The second greatest movie of all time. Second only to The Empire Strikes Back. I am emotional as I write this review, "\
        "knowing how many have died before seeing this film, how many will never know its majesty, and most of all, that I will "\
        "never be able to experience it for the first time ever again. We live in a cruel, indifferent universe."
    )
r4.critic = luke
r4.movie = starwars
r4.save!

r5 = Review.create(
    rating: 24,
    text: "That this film is considered among the greatest is disgusting. The plot is thin, the acting dull. Williams' score is "\
        "garbage. The stupid masses are mistaken. If I must endure another Hollywood blockbuster, I shall surely perish."
    )
r5.critic = jean
r5.movie = starwars
r5.save!

r6 = Review.create(
    rating: 100,
    text: "It's great, let me tell you. The robots are huge. I spoke with Michael and he told me, 'Donald, you have the best taste "\
        "in movies.' He's a good man. He's gonna help me make movies great again with ten sequels. We're gonna make a lot of money."
    )
r6.critic = donald
r6.movie = transformers
r6.save!

r7 = Review.create(
    rating: 100,
    text: "The greatest, most influential film of all time. Need I say more?"
    )
r7.critic = jean
r7.movie = citizenkane
r7.save!

r8 = Review.create(
    rating: 100,
    text: "Rosebud! Few can name a film more influential to the craft of film-making. Orson Welles created a masterpiece both in "\
        "front of and behind the camera. Will we ever see a film as great?"
    )
r8.critic = john
r8.movie = citizenkane
r8.save!

r9 = Review.create(
    rating: 95,
    text: "Christopher Nolan's best film to date. The dark, realistic vision of Gotham and its caped crusader make for arguably the "\
        "greatest comic-book movie of all time. Heath's performance as the Joker will perhaps never be beaten. One hopes that Affleck's "\
        "rendition will come close to what Nolan achieved here."
    )
r9.critic = bob
r9.movie = tdk
r9.save!

r10 = Review.create(
    rating: 98,
    text: "The best in The Lord of the Rings trilogy, and leagues ahead of the Hobbit films. Is there a greater story of friendship "\
        "and loyalty? Jackson created a sprawling, epic adventure that single-handedly destroyed the fantasy genre with the depths "\
        "of its greatness."
    )
r10.critic = jean
r10.movie = lotr
r10.save!

r11 = Review.create(
    rating: 92,
    text: "Fincher creates another moody, atmospheric drama, full of wit and charm, but with a sense of sadness underneath. Eisenberg is "\
        "fantastic, and Garfield was robbed of an Oscar. Ross and Reznor's score is frenetic and suitably unsettling."
    )
r11.critic = luke
r11.movie = social
r11.save!

r12 = Review.create(
    rating: 11,
    text: "To call this pile of garbage a film is a disgrace to film."
    )
r12.critic = jean
r12.movie = idr
r12.save!

r13 = Review.create(
    rating: 60,
    text: "Not as good as the prequels, George told me. Good man. No one will ever know. Sad!"
    )
r13.critic = donald
r13.movie = starwars
r13.save!

r14 = Review.create(
    rating: 16,
    text: "Please. No more."
    )
r14.critic = luke
r14.movie = idr
r14.save!

r15 = Review.create(
    rating: 14,
    text: "I have nothing to say."
    )
r15.critic = bob
r15.movie = idr
r15.save!

r16 = Review.create(
    rating: 93,
    text: "Nolan is at his finest here. Who would have thought after Batman & Robin that another Batman film could ever be great again? "\
        "The film is wonderfully wrwitten, acted, directed, scored, and shot. The film defies the generic, cookie-cutter standard that "\
        "now plagues superhero movies. I hope we return to a time when films like this are made."
    )
r16.critic = john
r16.movie = tdk
r16.save!

r17 = Review.create(
    rating: 100,
    text: "The Godfather is an achievement in cinema, the gold standard of film-making. Brando and Pacino are glorious. It's an offer you "\
        "can't refuse."
    )
r17.critic = jean
r17.movie = godfather
r17.save!

r18 = Review.create(
    rating: 23,
    text: "Boring. Everyone knows I'm the real godfather. Everyone agrees. I can't wait until Romney kisses the ring."
    )
r18.critic = donald
r18.movie = godfather
r18.save!
