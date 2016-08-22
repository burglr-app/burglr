class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
  def recipe_params
    params.require(:recipe).permit(
      :id,
      :title,
      steps_attributes: [
        :id,
        :title,
        :position,
        :description
      ],
      ingredients_attributes: [
        :id,
        :type,
        :title,
        :quantity
      ]
    )
  end
end
