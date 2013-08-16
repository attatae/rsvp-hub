class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|

      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :address_locality
      t.string :address_country

      t.timestamps
    end
  end
end
