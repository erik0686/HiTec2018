class Color < ApplicationRecord
  has_many :buildings, dependent: :destroy
end
