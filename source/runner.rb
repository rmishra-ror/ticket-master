# frozen_string_literal: true

# # StationManager is used to handle all the pasangers request and station info
require 'yaml'
require 'pry'
require './source/ticket'
require './source/ticket_collector'
require './source/ticket_printer'
require './source/station_configuration'

# # def receipt(t)
# #   puts "====================="
# #   puts t.source
# #   puts t.destination
# #   puts t.no_of_stations
# #   puts t.total_price
# #   puts t.date_time
# #   puts "====================="
# # end

# we give TC source and destination and ask them for printing
tc = TicketCollector.new
tc.genrate_ticket('Guindy', 'Chennai Fort')
puts TicketPrinter.new(tc).receipt
# # # t = Ticket.new('Chennai beach', 'Chennai Fort')
# # binding.pry

# # puts "=================="
# # t = Ticket.new('Kodambakkam', 'Guindy')
# # receipt(t)

# # puts "=================="
# # t = Ticket.new('Kodambakkam', 'Kodambakkam')
# # receipt(t)
