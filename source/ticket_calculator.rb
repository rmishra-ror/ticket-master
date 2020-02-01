require 'forwardable'
class TicketCalculator
  attr_accessor :ticket

  attr_accessor :ticket
  extend Forwardable
  def_delegators :@ticket, :source, :destination

  def initialize(ticket)
    @ticket = ticket
  end

  def no_of_stations
    @no_of_stations ||= (source_index - destination_index).abs
  end

  def total_price
    base_price + extra_price
  end

  def base_price
    no_of_stations.positive? ? StationConfiguration.base_price : 0
  end

  def extra_stations
    @extra_statios ||= (no_of_stations - StationConfiguration.no_of_stations_for_base_price)
  end

  def extra_price
    if extra_stations.positive?
      (extra_stations / StationConfiguration.no_of_stations_for_extra_price.to_f).ceil *
     StationConfiguration.extra_price
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
    StationConfiguration.stations.index(station)
  end

end