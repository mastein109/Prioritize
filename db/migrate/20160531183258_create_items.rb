class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.datetime :due_date
      t.boolean :completed, default: false
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
