class PetController < ApplicationController

  def create
    pet = Pet.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      # user_id: current_user.id
    )
    if pet.save
      render json: recipe
    else
      render json: { errors: pet.errors.full_messages }, status: :bad_request
    end
  end
end
