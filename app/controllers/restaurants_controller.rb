class RestaurantsController < ApplicationController
  has_many :reviews
  validates :name, :address, :category
  restaurant.save
end
