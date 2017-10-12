class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :street_address_1
      t.string :tel

      t.timestamps
    end
  end
end
