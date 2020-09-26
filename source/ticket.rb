# frozen_string_literal: true

class Ticket
  attr_accessor :source, :destination, :created_at

  def initialize(source, destination, created_at = Time.now)
    @source = source
    @destination = destination
    @created_at = created_at
  end

end
