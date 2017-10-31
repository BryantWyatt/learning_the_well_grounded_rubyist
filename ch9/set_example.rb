require 'set'

#Set Example
new_england = Set.new(['Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont'])
tri_state = Set.new(['New Jersey', 'New York', 'Connecticut'])
small_states = Set.new(['Connecticut', 'Delaware', 'Rhode Island'])
tiny_states = Set.new(['Delaware', 'Rhode Island'])

#Printing a new set to the command_Line
puts('Creating new set:')
state_new = Set.new(new_england)
state_new.each {|s| puts(s)}
puts()

#Diff Example:
puts('Diff:')
diff = new_england - tri_state
puts(diff.each {|s| puts(s)})
puts()

#Additional/Union
puts('Additional/Union:')
puts((new_england | tri_state).each {|s| puts(s)})
puts()

#Intersect
puts('Intersect:')
puts((new_england & tri_state).each {|s| puts(s)})
puts()

#Merging
puts('Merging:')
combination = tiny_states.merge(small_states)
puts(combination)

#TODO: Update the Subset and Superset so that the information is outputted as text rather than an object

#Subset
puts('Subset:')
tiny_states.subset?(small_states) {|s| puts(s)}

#Superset
puts('Superset:')
small_states.superset?(tiny_states) {|s| puts(s)}