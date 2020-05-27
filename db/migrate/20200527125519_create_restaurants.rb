class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
