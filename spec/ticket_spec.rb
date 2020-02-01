RSpec.describe 'Ticket' do
  before do
    @ticket = Ticket.new('Guindy', 'Chennai Fort')
  end
  it 'should raise error if source station is wrong' do
    expect{ Ticket.new('Wrong Source', 'Chennai Fort')}.to raise_error
  end

  it 'should raise error if destination station is wrong' do
    expect{ Ticket.new('Chennai Fort', 'Wrong destination')}.to raise_error
  end

  it 'should return 8 no_of_station between Guindy and Chennai Fort' do
    expect(@ticket.no_of_stations).to eq(8)
  end

  it 'should return price 15 for ticket between Guindy and Chennai Fort' do
    expect(@ticket.total_price).to eq(15)
  end

  it 'should return price and no_of_stations 0 for same stations' do
    ticket = Ticket.new('Chennai Fort', 'Chennai Fort')
    expect(ticket.no_of_stations).to eq(0)
    expect(ticket.total_price).to eq(0)
  end

  it 'should retun the receipt of ticket' do
    expect(@ticket.receipt).to eq("Guindy\nChennai Fort\n8 Stops\n15")
  end
end