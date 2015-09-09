require 'player'

describe Player do
  let(:ship){double :ship}

  it 'has a board' do
    expect(subject).to respond_to(:board)
  end

  it 'has ships' do
    expect(subject).to respond_to(:ships)
  end

  it 'can report miss positions' do
    p = Player.new
    p.receive_miss('A1')
    expect(p.misses).to include('A1')
  end

  it 'can report hit positions' do
    p = Player.new
    p.receive_hit('A1')
    expect(p.hits).to include('A1')
  end

  # it 'can place ships' do
  #   count = subject.ships.count
  #   subject.place ship
  #   expect(subject.ships.count).to eq(count + 1)
  # end

end
