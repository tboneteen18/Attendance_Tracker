class AddNameColumnInAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
  end
end
