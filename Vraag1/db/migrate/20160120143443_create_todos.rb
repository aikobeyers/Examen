class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :date_of_entry
      t.text :due_date
      t.text :description
      t.integer :priority
      t.integer :status

      t.timestamps null: false
    end
  end
end
