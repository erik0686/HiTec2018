class Student < ApplicationRecord
  validates :name, :last_name, :email, :career, :vegan, presence: true
  # validates :email, format: { with: /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i }
end
