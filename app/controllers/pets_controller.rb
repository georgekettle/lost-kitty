class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
    # render 'pets/index.html.erb'
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    # get strong params and initialize Pet instance
    @pet = Pet.new(pet_params)
    # save pet with strong params
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    # update this pet
    @pet.update(pet_params)
    # redirect to show page
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :image, :species, :date_found, :address, :number, :found_by)
  end
end
