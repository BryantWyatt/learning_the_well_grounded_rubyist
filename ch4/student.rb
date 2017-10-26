class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends
  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

end

j = Person.new('John')
p = Person.new('Paul')
g = Person.new('George')
r = Person.new('Ringo')

j.has_friend(p)
j.has_friend(g)
g.has_friend(p)
r.has_hobby('rings')