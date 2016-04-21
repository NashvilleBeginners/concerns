class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.boolean :activated, null: false, default: false

      t.timestamps null: false
    end
  end
end
