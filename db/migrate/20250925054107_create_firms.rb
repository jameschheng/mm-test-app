class CreateFirms < ActiveRecord::Migration[8.0]
  def change
    create_table :firms do |t|
      t.string :name, limit: 128, null: false
      t.string :address, limit: 256
      t.string :city, limit: 256
      t.string :postal_code, limit: 256
      t.string :state_abbrv, limit: 32
      t.integer :status_id
      t.string :url, limit: 1024
      t.string :phone, limit: 32
      t.text :about
      t.timestamps
    end
  end
end
