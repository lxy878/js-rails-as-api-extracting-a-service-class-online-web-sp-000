class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sighting).to_serialized_json
  end

  def show
      sighting = Sighting.find(params[:id])
      SightingSerializer.new(sighting).to_serialized_json
      render json: SightingSerializer.new(sighting).to_serialized_json
  end
end
