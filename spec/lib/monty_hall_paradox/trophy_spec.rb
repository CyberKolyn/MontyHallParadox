# frozen_string_literal: true

require 'rspec'
require_relative '../../../lib/monty_hall_paradox/trophy'
require_relative '../../../lib/monty_hall_paradox'

RSpec.describe 'Trophy' do

  let(:trophy_win) { MontyHallParadox::Trophy.new name: MontyHallParadox.trophy_win }
  let(:trophy_lose) { MontyHallParadox::Trophy.new name: MontyHallParadox.trophy_lose }

  context 'check trophy win' do
    it 'return trophy win' do
      expect(trophy_win.name).to eq(MontyHallParadox.trophy_win)
    end
  end

  context 'check trophy lose' do
    it 'return trophy lose' do
      expect(trophy_lose.name).to eq(MontyHallParadox.trophy_lose)
    end
  end

  context 'check validate' do
    it 'invalid name' do
      expect { MontyHallParadox::Trophy.new name: 'Goat1' }
        .to raise_error(MontyHallParadox::InvalidNameTrophy)
    end

    it 'valid name' do
      expect { MontyHallParadox::Trophy.new name: MontyHallParadox.trophy_win }
        .not_to raise_error
    end
  end
end
