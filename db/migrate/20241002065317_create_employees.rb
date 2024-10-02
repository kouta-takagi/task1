class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
