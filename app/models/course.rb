class Course < ActiveRecord::Base
  attr_accessible :name, :description, :address, :city, :starts_at, :ends_at
end
