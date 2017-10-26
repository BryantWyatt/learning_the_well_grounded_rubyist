class Person
  def initialize(name)
    @name = name
  end

  def inspect
    @name
    @age
  end
end

david = Person.new('David')
puts david.inspect