class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :diet
      t.integer :happiness_level
      t.boolean :alive

      t.timestamps null: false
    end
  end
end
