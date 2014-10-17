class WelcomeController < ApplicationController
  def index
    @delivery_time = "..."
    #@item = FoodItem.all.sample
    @cuisine = FoodItem.all.map {|item| item.cuisine}.uniq.sample
    @item = FoodItem.where(cuisine: @cuisine).sample
  end
end