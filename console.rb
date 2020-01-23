require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')


require('pry-byebug')
Casting.delete_all()

movie1 = Movie.new({'title' => 'The Coder who ran away', 'genre' => 'Comedy'})
movie1.save()
movie2 = Movie.new({'title' => 'Magic on Renfrew St.', 'genre' => 'Romance'})
movie2.save()

star1 = Star.new({'first_name' => 'Jeffery', 'last_name' => 'Danmure'})
star1.save()
star2 = Star.new({'first_name' => 'Cynthia', 'last_name' => 'Delaney'})
star2.save()
star1.first_name = 'Jomanthony'
star1.update()



casting1 = Casting.new({'star_id' => star1.id, 'movie_id' => movie1.id, 'fee' => '2000000'})
casting2 = Casting.new({'star_id' => star2.id, 'movie_id'=> movie1.id, 'fee' => '10000000'})
casting3 = Casting.new({'star_id' => star2.id, 'movie_id' => movie2.id, 'fee'=>'15000000'})
casting1.save
casting2.save
casting3.save
binding.pry
casting2.delete()


binding.pry
nil
