# frozen_string_literal: true

require 'forwardable'
# Ticket Collector takes source and destination as an input and genrate ticket
class TicketCollector
  attr_accessor :ticket


  extend Forwardable
  def_delegators :@ticket, :source, :destination
  def_delegators :StationConfiguration, :stations, :base_price_val, :no_of_stations_for_base_price,
                 :no_of_stations_for_extra_price, :extra_price_val

  def initialize
    @ticket = nil
  end

  def genrate_ticket(source, destination)
    validate_source_and_destination_station(source, destination)
    @ticket = Ticket.new(source, destination)
  end

  def no_of_stations
    @no_of_stations ||= (source_index - destination_index).abs
  end

  def total_price
    base_price + extra_price
  end

  def base_price
    no_of_stations.positive? ? base_price_val : 0
  end

  def extra_stations
    @extra_stations ||= (no_of_stations - no_of_stations_for_base_price)
  end

  def extra_price
    if extra_stations.positive?
      (extra_stations / no_of_stations_for_extra_price.to_f).ceil *
        extra_price_val
    else
      0
    end
  end

  private

  def source_index
    station_index(source)
  end

  def destination_index
    station_index(destination)
  end

  def station_index(station)
    stations.index(station)
  end

  def validate_source_and_destination_station(source, destination)
    validate_station(source) && validate_station(destination)
  end

  def validate_station(station)
    unless stations.include?(station)
      raise StandardError, "Station: #{station} not exists"
    end

    station
  end
end
