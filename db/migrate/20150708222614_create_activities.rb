class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.date :date
      t.time :time
      t.string :location
      t.boolean :permission_slip, default: false


      t.timestamps null: false
    end
  end
end
