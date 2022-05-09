class ActorsController < ApplicationController
    def show
        actor = Actor.find(params["id"])
        render json actor.as_json
    end
end
