class Ticket

  VENUES = ['Town Hall', 'Convention Center', 'Town Hall'].freeze

  attr_reader :venue, :date, :price
  def initialize(venue, date)
    puts 'Creating a new ticket!'
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
    @price = price

  end

  def price=(amount)
    if (amount *100).to_i == amount * 100
      @price = amount
    else
      puts 'The price seems to be malformed'
    end
  end
end

def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new('Town Hall', '11/12/13')
cc = Ticket.new('Convention Center', '12/13/14')
fg = Ticket.new('Fairgrounds', '13/14/15')

puts 'We\'ve created two tickets.'
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.venue} at #{cc.date}"
puts ''
cc.price = 63.00
puts "The ticket cost $#{"%.2f" % cc.price}"
cc.price = 72.50
puts "Whoops -- it just went up. It now costs $#{"%.2f" % cc.price}"

cc.price = 12.55
th.price = 10.00
fg.price = 18.00

highest = Ticket.most_expensive(th,cc,fg)
puts ''
puts "The highest-priced ticket is the one for #{highest.venue}"


