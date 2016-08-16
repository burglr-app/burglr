class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title

      t.hstore :ingredients, default: '', null: false
      t.hstore :steps, default: '', null: false
      t.timestamps
    end
  end
end
