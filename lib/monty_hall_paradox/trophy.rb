# frozen_string_literal: true
module MontyHallParadox
  class Trophy

    attr_reader :name

    def initialize(name:)
      @name = validate_name(name)
    end

    private

    def validate_name(name)
      if can_set_name?(name)
        name
      else
        raise InvalidNameTrophy, name
      end
    end

    def can_set_name?(name)
      name == MontyHallParadox.trophy_win || name == MontyHallParadox.trophy_lose
    end

  end

  class InvalidNameTrophy < StandardError
    def initialize(name)
      @name = name
      super
    end

    def message
      "Name: #{@name} invalid, set \"#{MontyHallParadox.trophy_win}\" or \"#{MontyHallParadox.trophy_lose}\""
    end
  end
end
