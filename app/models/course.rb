class Course < ActiveRecord::Base
  attr_accessible :name, :description, :address, :city, :starts_at, :ends_at
  has_and_belongs_to_many :users, join_table: 'rsvps'
end
