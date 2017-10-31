#Locating a substring inside a string
string = %q(Ruby is a cool language)
#=>"Ruby is a cool language"
string[5]
#=>"i"
string[-12]
#=>"o"
string[5,10]
#=>"is a cool "
string[7..14]
#=>" a cool "
string[-12..-3]
#=>"ool langua"
string[-12..20]
#=>"ool langua"
string[15..-1]
#=>"language"
string[/c[ol ]+/]
#=> "cool l"

#Remove a text specific text from a string
string.slice!('cool ')
puts(string)

#Substring replacement
string['cool'] = 'great'
puts(string)
string[-1] = '!'
puts(string)