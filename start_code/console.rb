require('pry')
require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

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

movie1.title = 'Saving Private Ryan'
movie1.update()
# movie1.delete()




binding.pry
nil