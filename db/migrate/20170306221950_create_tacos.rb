class CreateTacos < ActiveRecord::Migration[5.0]
  def change
    create_table :tacos do |t|
      t.string :title
      t.string :description
      t.string :uri
      t.integer :price, limit: 8

      t.timestamps
    end
  end
end
