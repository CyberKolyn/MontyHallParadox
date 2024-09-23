# frozen_string_literal: true
require_relative 'action_door'

module MontyHallParadox
  class Player
    include MontyHallParadox::ActionDoor
  end
end

