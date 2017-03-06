class Taco < ApplicationRecord
	validates_presence_of :title, :description, :uri, :price
end
