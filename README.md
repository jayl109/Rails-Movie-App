# README

WRITEUP

Title: MovieExplorer
Team Members: Jason Lum, Matthew Li, Nathan Khuu
Demo Link: https://www.youtube.com/watch?v=TP674HdC2IU
https://github.com/jayl109/Rails-Movie-App

Idea: An application where movie viewers and critics can read information about and write ratings and reviews for movies, as well as subscribe to movies and critics to follow their activity.

Models and Description:
Critic
	- Has name and biography
	- Can make reviews with their names attached to them
	- Has and belongs to many viewers
	- Has many reviews
Movie
	- Has name, average rating, and description
	- Has and belongs to many viewers
	- Has many reviews
Review
	- Has rating, review text, critic ID, movie ID, and viewer ID
	- Belongs to viewers, movies, and critics
Viewer
	- Has name
	- Certain viewers are critics
	- Can make anonymous reviews
	- Has and belongs to many movies and critics

Features:
	- Users can log in
	- Viewers can make anonymous reviews, critics can make reviews
	- Users can subscribe to movies and critics to follow their activity

Division of Labor:
	- Jason: Devise, models, model relationships, subscribing
	- Matthew: Made individual movie and critic pages, styling, seeds
	- Nathan: Rolify, Home page, movie/critic tables, bug fixes
