class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :name
      t.decimal :price
      t.string :type
      t.text :description

      t.timestamps null: false
    end
  end
end
