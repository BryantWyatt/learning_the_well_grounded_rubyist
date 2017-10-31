#"HERE-doc" example #1
text = <<EOM
This is the first line of text.
This is the second line.
Now we're done.
EOM
puts(text)

#"HERE-doc" example #2
a = <<EOM.to_i * 10
5
EOM
puts(a)

#"HERE-doc" array example
array = [1, 2, 3, <<EOM, 4]
This is the here-doc!
It becomes array[3].
EOM
puts(array)

