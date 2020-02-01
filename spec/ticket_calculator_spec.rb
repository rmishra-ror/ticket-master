RSpec.describe 'TicketCalculator' do
  before do
    @ticket = Ticket.new('Guindy', 'Chennai Fort')
    @printer = TicketCalculator.new(@ticket)
  end
  it 'should delegate source to ticket' do
    expect(@printer.source).to eq(@ticket.source)
  end

  it 'should delegate destination to ticket' do
    expect(@printer.destination).to eq(@ticket.destination)
  end

  it 'should return no_of_stations 8 between Guindy and Chennai Fort' do
    expect(@printer.no_of_stations).to eq(8)
  end

  it 'should return total_price 15 between Guindy and Chennai Fort' do
    expect(@printer.total_price).to eq(15)
  end

  it 'should return base 10 between Guindy and Chennai Fort' do
    expect(@printer.base_price).to eq(10)
  end

  it 'should return extra_stations 3 between Guindy and Chennai Fort' do
    expect(@printer.extra_stations).to eq(3)
  end

  it 'should return extra_rice 5 between Guindy and Chennai Fort' do
    expect(@printer.extra_price).to eq(5)
  end
end
