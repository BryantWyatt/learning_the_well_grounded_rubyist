# Example of Date being passed to a block of code

require 'date'
d = Date.today
next_week = d + 7
d.upto(next_week) {|date| puts "#{date} is a #{date.strftime("%A")}"}
