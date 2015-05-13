class PetsController < ApplicationController

  protect_from_forgery :except => :update

  def home
  end

  def update
    pet = Pet.first.present? ? Pet.first : Pet.new
    pet.update_attributes(pet_params)
    render json: {pet: pet}
  end

  def show
    pet = Pet.first.present? ? Pet.first : Pet.new
    render json: {pet: pet}
  end

  private

  def pet_params
    params.require(:pet).permit(Pet.new.attributes.keys)
  end

end
