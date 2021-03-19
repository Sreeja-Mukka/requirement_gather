class AddDepartmentIdToDetails < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :details, :departments
  end
end 
