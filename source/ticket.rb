class Ticket
  attr_accessor :source, :destination, :created_at, :date_time

  def initialize(source, destination, created_at= Time.now, date_time = Time.now)
    validate_source_and_destination_station(source, destination)
    @source = source
    @destination = destination
    @created_at = created_at
    @date_time = date_time
  end

  def no_of_stations
    TicketCalculator.new(self).no_of_stations
  end

  def total_price
    TicketCalculator.new(self).total_price
  end

  def receipt
    TicketPrinter.new(self).receipt
  end

  private

  def validate_source_and_destination_station(source, destination)
    validate_station(source) && validate_station(destination)
  end

  def validate_station(station)
    unless StationConfiguration.stations.include?(station)
      raise StandardError.new("Station: #{station} not exists")
    end
    station
  end
end