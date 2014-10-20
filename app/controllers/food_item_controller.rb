class FoodItemController < ApplicationController
  def show
    @id_requested = params[:id]
    @item = FoodItem.find @id_requested
  end
end
