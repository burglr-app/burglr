class AddRecipeRefToSteps < ActiveRecord::Migration[5.0]
  def change
    add_reference :steps, :recipe, foreign_key: true
  end
end
