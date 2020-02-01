RSpec.describe 'TicketPrinter' do
  before do
    @ticket = Ticket.new('Guindy', 'Chennai Fort')
    @printer = TicketPrinter.new(@ticket)
  end
  it 'should delegate source to ticket' do
    expect(@printer.source).to eq(@ticket.source)
  end

  it 'should delegate destination to ticket' do
    expect(@printer.destination).to eq(@ticket.destination)
  end

  it 'should delegate no_of_stations to ticket' do
    expect(@printer.no_of_stations).to eq(@ticket.no_of_stations)
  end

  it 'should delegate total_price to ticket' do
    expect(@printer.total_price).to eq(@ticket.total_price)
  end

  it 'should print ticket receipt' do
    expect(@printer.receipt).to eq("Guindy\nChennai Fort\n8 Stops\n15")
  end
end