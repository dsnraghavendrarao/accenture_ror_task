class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.float :salary
      t.integer :rating
      t.integer :role_id
      t.integer :report_role_id

      t.timestamps
    end
  end
end
