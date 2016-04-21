class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.boolean :activated, null: false, default: false
      t.references :company, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
