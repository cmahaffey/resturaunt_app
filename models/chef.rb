class Chef < ActiveRecord::Base
  has_many :items
  has_many :foods, through: :items
end
