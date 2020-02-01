require 'yaml'
class StationConfiguration
 class << self
	  def config
	    @config ||= YAML.load_file('config/stations.yml')
	  end

	  def stations
	    config['stations']
	  end

	  def base_price
	    config['price']['base_price']
	  end

	  def no_of_stations_for_base_price
	    config['price']['no_of_stations_for_base_price']
	  end

	  def extra_price
	    config['price']['extra_price']
	  end

	  def no_of_stations_for_extra_price
	    config['price']['no_of_stations_for_extra_price']
	  end
	end
end