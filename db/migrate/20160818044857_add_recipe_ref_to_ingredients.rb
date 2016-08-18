class AddRecipeRefToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_reference :ingredients, :recipe, foreign_key: true
  end
end
