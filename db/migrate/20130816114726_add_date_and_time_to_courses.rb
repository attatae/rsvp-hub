class AddDateAndTimeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :starts_at, :datetime
    add_column :courses, :ends_at, :datetime
  end
end
