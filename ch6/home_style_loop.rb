class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
  end
end

class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

  def my_map
    acc = []
    my_each { |e| acc << yield(e) }
  end
end

array = [1, 2, 3, 4, 5]
names = %w[David Alan Black]


5.my_times { |i| puts("I'm on iteration #{i}!") }
puts("\n")
array.my_each { |e| puts("The block just got handed #{e}.") }
puts("\n")

names.my_map { |name| puts(name.upcase) }

