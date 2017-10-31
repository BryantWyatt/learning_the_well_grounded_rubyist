numbers = [1, 2, 3, 4]

numbers.inject do |acc, n|
  p(%W{ adding #{acc} and #{n} ... #{acc+n}})
  acc + n
end