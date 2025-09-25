class CreateStatuses < ActiveRecord::Migration[8.0]
  def change
    create_table :statuses do |t|
      t.string :name, limit: 64, null: false
      t.string :type, limit: 64, null: false
      t.timestamps
    end
  end
end
