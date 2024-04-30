# frozen_string_literal: true

class TileComponent < ViewComponent::Base
  with_collection_parameter :tile

  def initialize(tile:)
    @tile = Tile.new(**tile.symbolize_keys)
  end

end
