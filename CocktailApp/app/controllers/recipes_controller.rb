class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new(cocktail_id: params[:cocktail_id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @recipe.cocktail = @cocktail
    @recipe.save
    redirect_to cocktail_path(@cocktail)
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end
end
