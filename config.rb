# frozen_string_literal: true
require_relative 'lib/monty_hall_paradox'

MontyHallParadox.config do |c|
  c.trophy_win = 'Car1'
  c.trophy_lose = 'Goat1'
  c.cycles_modeling = 1_000_000
  c.count_doors = 4
end

