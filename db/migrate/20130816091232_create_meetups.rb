class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.string :country
      t.latitude :float
      t.longitude :float
      t.address_locality :string
      t.address_country :string

      t.timestamps
    end
  end
end
