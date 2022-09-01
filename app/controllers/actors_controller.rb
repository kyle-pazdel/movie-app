class ActorsController < ApplicationController
  def index
    actors = Actor.order("last_name")
    render json: actors.as_json
  end

  def show
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end
end
