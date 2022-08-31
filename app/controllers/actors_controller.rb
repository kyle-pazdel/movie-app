class ActorsController < ApplicationController
  def single_actor_method
    actor = Actor.find_by(id: 1)
    render json: actor.as_json
  end
end
