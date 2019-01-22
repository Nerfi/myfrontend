class DosesController < ApplicationController

  #def new
    #@cockail = Cocktail.find(params[:cocktail_id])
   # @dose = Dose.new

  #end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail # con esto queremos decir que la dosis creada son para ese coktail ?
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
       @review = Review.new
       render "cocktails/show" #encontrado
     end

  end


  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)

  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id) #why ?

  end
end
