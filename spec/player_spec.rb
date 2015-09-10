require 'player'

describe Player do
  let(:ship){double(:ship, {position: "A1",shipklass: :Ship,direction: :N})}
  # let(:player){double(:player, {ships: "A1"})}

  it 'has a board' do
    expect(subject).to respond_to(:board)
  end

  it 'has ships' do
    expect(subject).to respond_to(:ships)
  end

  it 'can report miss positions' do
    subject.receive_miss('A1')
    expect(subject.misses).to include('A1')
  end

  it 'can report hit positions' do
    subject.place(ship)
    allow(ship).to receive(:was_hit)
    subject.receive_hit('A1')
    expect(subject.hits).to include('A1')
  end

  it 'can report a hit' do
    subject.place(ship)
    expect(subject.receive_hit('A1')).to eq('hit')
  end

  it 'can report a miss' do
    subject.place(ship)
    expect(subject.receive_miss('B1')).to eq('miss')
  end

  it 'can lose' do
    subject.place(ship)
    allow(ship.was_hit).to receive(:was_hit)
    subject.receive_hit("A1")
    expect(subject.lost).to eq('Game Over - You Lose')
  end

  # it 'can place ships' do
  #   count = subject.ships.count
  #   subject.place ship
  #   expect(subject.ships.count).to eq(count + 1)
  # end

end
