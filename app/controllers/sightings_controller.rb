class SightingsController < ApplicationController
    def index 
        sightings = Sighting.all 
    end 

    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_hash 
    end
end
