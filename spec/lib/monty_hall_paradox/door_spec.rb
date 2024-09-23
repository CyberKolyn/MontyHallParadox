# frozen_string_literal: true

require_relative '../../../lib/monty_hall_paradox/door'
require_relative '../../../lib/monty_hall_paradox/trophy'

RSpec.describe MontyHallParadox::Door do

  let(:trophy_lose) { MontyHallParadox::Trophy.new name: 'Goat' }
  let(:door) { MontyHallParadox::Door.new trophy: trophy_lose, number: 0 }

  it 'return trophy lose' do
    expect(door.trophy.name).to eq('Goat')
  end

  it 'return number door' do
    expect(door.number).to eq(0)
  end

  it 'return number door' do
    expect(door.number).to eq(0)
  end
end
