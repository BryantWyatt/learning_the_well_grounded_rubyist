#TODO: Look into global declarations for #{$1} and #{$2}

alphabet = %q{The alphabet starts with abc}
match_word = %q{eject}
various_names = %q{Peel,Emma,Mrs.,talented amateur}

puts(alphabet =~ /abc/)
puts(/abc/.match(alphabet))

puts('Wildcard example')
puts('Match!') if /#{match_word}/.match('%ejected')

puts('Sub Matches with Parentheses')
puts(/[A-Za-z]+,[A-Za-z]+,Mrs?\./.match(various_names))

puts('With string interpolation')
puts("Dear #{$2} #{$1},")
