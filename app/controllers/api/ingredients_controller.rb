class Api::IngredientsController < ApplicationController

  def show
    @ingredient = Ingredient.find(params[:id])
    render "show.json.jbuilder"
  end
  
end
