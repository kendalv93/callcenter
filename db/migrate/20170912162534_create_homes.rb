class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :category
      t.string :sku
      t.string :comments

      t.timestamps null: false
    end
  end
end
