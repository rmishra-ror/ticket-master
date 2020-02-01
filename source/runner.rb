# # StationManager is used to handle all the pasangers request and station info
# require 'yaml'
# require 'pry'
# require './source/ticket'
# require './source/ticket_calculator'
# require './source/ticket_printer'
# require './source/station_configuration'


# # def receipt(t)
# #   puts "====================="
# #   puts t.source
# #   puts t.destination
# #   puts t.no_of_stations
# #   puts t.total_price
# #   puts t.date_time
# #   puts "====================="
# # end

# t = Ticket.new('Guindy', 'Chennai Fort')
# binding.pry
# puts t.receipt
# # # t = Ticket.new('Chennai beach', 'Chennai Fort')
# # binding.pry


# # puts "=================="
# # t = Ticket.new('Kodambakkam', 'Guindy')
# # receipt(t)

# # puts "=================="
# # t = Ticket.new('Kodambakkam', 'Kodambakkam')
# # receipt(t)