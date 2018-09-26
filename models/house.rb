require_relative('../db/sql_runner')

class House

  attr_reader :id, :name

  def initialize (options)
    @id = options["id"].to_i
    @name = options["name"]

  end

  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) RETURNING *"
    values = [@name]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE houses SET name = $1
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM houses
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run( sql )
    result = houses.map { |house| House.new(house) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql ,values).first
    house = House.new(result)
    return house
  end

  def self.delete_by_id(id)
    sql = "DELETE FROM houses
    WHERE id = $1"
    values = [id]
    SqlRunner.run( sql, values )
  end



end
