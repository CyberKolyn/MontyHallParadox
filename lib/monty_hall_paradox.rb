# frozen_string_literal: true

module MontyHallParadox
  class << self
    attr_writer :trophy_lose, :trophy_win, :cycles_modeling, :count_doors

    def config
      yield self
    end

    def trophy_win
      @trophy_win || 'Car'
    end

    def trophy_lose
      @trophy_lose || 'Goat'
    end

    def cycles_modeling
      @cycles_modeling || 10_000
    end

    def count_doors
      @count_doors || 3
    end

  end
end
