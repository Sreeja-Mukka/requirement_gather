class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.integer :department_id
      t.string :title
      t.string :description
      t.string :objective
      t.string :analytics
      t.date :expected_deadline

      t.timestamps
    end
  end
end
