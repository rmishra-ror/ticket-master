# frozen_string_literal: true

RSpec.describe 'TicketCollector' do
  before do
    @tc = TicketCollector.new
    @tc.genrate_ticket('Guindy', 'Chennai Fort')
    @ticket = @tc.ticket
  end

  it 'should raise error if source station is wrong' do
    expect do
      TicketCollector.new.genrate_ticket('Wrong Source', 'Chennai Fort')
    end.to raise_error
  end

  it 'should raise error if destination station is wrong' do
    expect do
      TicketCollector.new.genrate_ticket('Chennai Fort', 'Wrong destination')
    end.to raise_error
  end

  it 'should delegate source to ticket' do
    expect(@tc.source).to eq(@ticket.source)
  end

  it 'should delegate destination to ticket' do
    expect(@tc.destination).to eq(@ticket.destination)
  end

  it 'should return no_of_stations 8 between Guindy and Chennai Fort' do
    expect(@tc.no_of_stations).to eq(8)
  end

  it 'should return total_price 15 between Guindy and Chennai Fort' do
    expect(@tc.total_price).to eq(15)
  end

  it 'should return base 10 between Guindy and Chennai Fort' do
    expect(@tc.base_price).to eq(10)
  end

  it 'should return extra_stations 3 between Guindy and Chennai Fort' do
    expect(@tc.extra_stations).to eq(3)
  end

  it 'should return extra_rice 5 between Guindy and Chennai Fort' do
    expect(@tc.extra_price).to eq(5)
  end
end
