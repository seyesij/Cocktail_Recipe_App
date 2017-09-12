class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find_by(id: params[:id])
    @recipes = @cocktail.recipes
  end

  def create
    cocktail = params['cocktail']
    Cocktail.create(name: cocktail['name'],
                photo: cocktail['photo'])
    redirect_to cocktails_path
  end

  def destroy
    Cocktail.destroy(params['id'])
    redirect_to cocktails_path
  end

  def update
    cocktail = params['cocktail']
    Cocktail.update(params[:id],
                name: cocktail['name'],
                photo: cocktail['photo'])
    redirect_to cocktails_path
  end
end
