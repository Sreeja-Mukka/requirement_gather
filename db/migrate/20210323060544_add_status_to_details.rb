class AddStatusToDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :details, :status, :string
  end
end
