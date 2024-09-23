# frozen_string_literal: true

require 'rspec'
require_relative '../../../lib/monty_hall_paradox/door'
require_relative '../../../lib/monty_hall_paradox/trophy'
require_relative '../../../lib/monty_hall_paradox/leading'

RSpec.describe 'Leading' do
  let(:leading) { MontyHallParadox::Leading.new }
  let(:trophy) { MontyHallParadox::Trophy.new name: MontyHallParadox.trophy_win }
  let(:door) { MontyHallParadox::Door.new number: 0, trophy: trophy }

  context 'used door' do
    it 'return picked door' do
      expect(leading.pick_door(door)).to eq(door)
    end
  end
end
