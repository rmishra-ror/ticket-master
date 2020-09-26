# frozen_string_literal: true

require 'forwardable'
class TicketPrinter
  attr_accessor :tc, :ticket
  extend Forwardable
  def_delegators :@tc, :no_of_stations, :total_price
  def_delegators :@ticket, :source, :destination

  def initialize(ticket_collector)
    @tc = ticket_collector
    @ticket = tc.ticket
  end

  def receipt
    "#{source}\n#{destination}\n#{no_of_stations} Stops\n#{total_price}"
  end
end
