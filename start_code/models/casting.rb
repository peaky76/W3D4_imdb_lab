require_relative('../db/sql_runner')

class Casting

    attr_reader :id
    attr_accessor :star_id, :movie_id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @star_id = options['star_id'].to_i
        @movie_id = options['movie_id'].to_i
        @fee = options['fee'].to_i
    end

    def save()
        sql = "INSERT INTO castings (star_id, movie_id, fee) VALUES ($1, $2, $3) RETURNING id"
        values = [@star_id, @movie_id, @fee]
        casting = SqlRunner.run(sql, values).first
        @id = casting['id'].to_i
    end

    def update()
        sql = "UPDATE castings SET (star_id, movie_id, fee) = ($1, $2, $3) WHERE id = $4"
        values = [@star_id, @movie_id, @fee, @id]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM castings WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.delete_all()
        sql = "DELETE FROM castings"
        SqlRunner.run(sql)
    end

    def self.all()
        sql = "SELECT * FROM castings"
        castings = SqlRunner.run(sql)
        result = castings.map { |casting| Casting.new(casting) }
        return result
    end

end
