require('pry')
require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

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

star2.first_name = 'Matthew'
star2.update()

binding.pry
nil