class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image
      t.string :species
      t.date :date_found
      t.string :address
      t.string :number
      t.string :found_by

      t.timestamps
    end
  end
end
