class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all

  end


  def show
    #Si añadimos la `s` parece que funciona, pero en el ejemplo es sin `s`, mirar lo que pasa
    @cocktails = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new


  end

  def new
    @cocktail = Cocktail.new


  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end

  end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name)

  end
end
