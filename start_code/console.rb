require('pry')
require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

star1 = Star.new({
    'first_name' => 'Tom',
    'last_name' => 'Hanks'
})
star1.save()

star2 = Star.new({
    'first_name' => 'Matt',
    'last_name' => 'Damon'
})
star2.save()

movie1 = Movie.new({
    'title' => 'Saving Private Bryan',
    'genre' => 'drama'
})
movie1.save()

movie2 = Movie.new({
    'title' => 'Forrest Gump',
    'genre' => 'romcom'
})
movie2.save()

casting1 = Casting.new({
    'star_id' => star1.id,
    'movie_id' => movie1.id
})
casting1.save()

casting2 = Casting.new({
    'star_id' => star2.id,
    'movie_id' => movie1.id
})
casting2.save()

casting3 = Casting.new({
    'star_id' => star1.id,
    'movie_id' => movie2.id
})
casting3.save()

binding.pry
nil