class ActorsController < ApplicationController
  def index
    actors = Actor.order("last_name")
    render json: actors.as_json
  end

  def show
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params["id"])
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.favorite_animal = params["favorite_animal"] || actor.favorite_animal
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params["id"])
    actor.delete
  end
end
