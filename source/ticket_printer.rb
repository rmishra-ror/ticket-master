require 'forwardable'
class TicketPrinter
  attr_accessor :ticket
  extend Forwardable
  def_delegators :@ticket, :source, :destination, :no_of_stations, :total_price


  def initialize(ticket)
    @ticket = ticket
  end

  def receipt
    "#{source}\n#{destination}\n#{no_of_stations} Stops\n#{total_price}"
  end
end