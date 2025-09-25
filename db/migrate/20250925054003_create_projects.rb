class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name, limit: 128, null: false
      t.string :description, limit: 512
      t.integer :client_firm_id, null: false
      t.integer :status_id, null: false
      t.timestamps
    end
  end
end
