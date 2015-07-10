class AddColumnToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :admin_id, :integer
  end
end
