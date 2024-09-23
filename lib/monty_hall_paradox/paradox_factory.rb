# frozen_string_literal: true
require_relative 'door'
require_relative 'leading'
require_relative 'player'
require_relative 'trophy'

module MontyHallParadox
  class ParadoxFactory

    attr_reader :leading, :player

    def initialize(
      leading: MontyHallParadox::Leading.new,
      player: MontyHallParadox::Player.new,
      trophy_win: MontyHallParadox::Trophy.new(name: MontyHallParadox.trophy_win),
      trophy_lose: MontyHallParadox::Trophy.new(name: MontyHallParadox.trophy_lose)
    )
      @leading = leading
      @player = player
      @trophy_win = trophy_win
      @trophy_lose = trophy_lose
    end

    def create
      [@leading, @player, doors]
    end

    private

    def doors
      start_lose_doors = 2
      doors_win = MontyHallParadox::Door.new number: 1, trophy: @trophy_win

      doors = [*start_lose_doors..MontyHallParadox.count_doors].map do |number|
        MontyHallParadox::Door.new number: number, trophy: @trophy_lose
      end

      doors << doors_win
      doors.shuffle
    end

  end
end

