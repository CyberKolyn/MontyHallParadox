# frozen_string_literal: true

module MontyHallParadox
  class Door

    attr_reader :number, :trophy

    def initialize(trophy:, number:)
      @number = number
      @trophy = trophy
    end

    def picked?(door)
      door.number == @number
    end

    def win?
      @trophy.name == MontyHallParadox.trophy_win
    end

    def lose?
      @trophy.name == MontyHallParadox.trophy_lose
    end

  end
end
