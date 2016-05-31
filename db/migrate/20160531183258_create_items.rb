class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :title
      t.datetime :due_date
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
