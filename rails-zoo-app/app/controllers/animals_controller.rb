class AnimalsController < ApplicationController

  def index
    @animals = Animal.order(:name)
  end

  def show
    @animal = Animal.find_by(id: params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save == true
      redirect_to root_path
    else
      render html: "<script>alert('The animal was not added!')</script>".html_safe
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end
end
