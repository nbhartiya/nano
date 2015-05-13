class AddParamsToPet < ActiveRecord::Migration
  def change
    add_column :pets, :fed, :boolean
    add_column :pets, :lastMeal, :string
    add_column :pets, :eatsOnly, :string
  end
end
