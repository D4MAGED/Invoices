class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :client
      t.string :logo
      t.string :address
      t.string :location
      t.string :phone
      t.string :email
      t.text :template

      t.timestamps
    end
  end
end
