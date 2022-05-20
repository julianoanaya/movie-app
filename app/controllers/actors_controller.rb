class ActorsController < ApplicationController
    def show
        actor = Actor.find(params["id"])
        render json: actor.as_json
    end
    def index
        actor = Movie.all
        render json: actor.as_json
    end
    def create
        actor = Actor.new(
            first_name: params[:first_name],
            last_name: params[:last_name],
            known_for: params[:known_for],
            age: params[:age],
            gender: params[:gender],
            movie_id: params[:movie_id]
        )
        actor.save
        render json: actor.as_json
    end
    def update
        actor = Actor.find(params["id"])
        actor.first_name = params[:first_name] || actor.first_name,
        actor.last_name = params[:last_name] || actor.last_name,
        actor.known_for = params[:known_for] || actor.known_for,
        actor.age = params[:age] || acotr.age,
        actor.gender = params[:gender] || actor.gender
        actor.save
        render json: actor.as_json
    end
    def destroy
        actor = Actor.find(params["id"])
        actor.delete
        render json: {messgae: "it has been deleted"}
    end
end
