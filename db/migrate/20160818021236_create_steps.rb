class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :title, default: '', null: false
      t.integer :position, default: 0, null: false
      t.string :description, default: ''

      t.timestamps
    end
  end
end
