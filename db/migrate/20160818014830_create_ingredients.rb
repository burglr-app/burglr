class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :title, default: '', null: false
      t.integer :quantity, default: 0, null: false
      t.string :type, default: ''

      t.timestamps
    end
  end
end
