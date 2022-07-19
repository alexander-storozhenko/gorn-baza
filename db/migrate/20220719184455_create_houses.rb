class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :caption
      t.string :price

      t.timestamps
    end
  end
end
