# frozen_string_literal: true
require_relative 'lib/monty_hall_paradox'
require_relative 'lib/monty_hall_paradox/paradox_factory'

MontyHallParadox.config do |c|
  c.trophy_win = 'Car1'
  c.trophy_lose = 'Goat1'
  c.cycles_modeling = 100_000
  c.count_doors = 3
end

leading, player, doors = MontyHallParadox::ParadoxFactory.new.create

puts doors.size

result = []
lose_result = false

[*1..MontyHallParadox.cycles_modeling].each do |_|

  picked_doors = []

  picked_doors << player.pick_door(doors[rand(0..doors.size - 1)])

  leading_accessible_doors = (doors - picked_doors).filter(&:lose?)

  picked_doors << leading.pick_door(leading_accessible_doors[rand(0..leading_accessible_doors.size - 1)])

  player_accessible_doors = doors - picked_doors

  last_pick_door = player.pick_door(player_accessible_doors[rand(0..player_accessible_doors.size - 1)])

  result << last_pick_door.win?
end

result_size = result.size.to_f
result_size_wins = (result - [lose_result]).size.to_f

puts
puts "#{((result_size_wins / result_size) * 100.0).round(2)} %"
