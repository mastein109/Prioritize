class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.datetime :due_date
      t.boolean :completed, default: false
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
