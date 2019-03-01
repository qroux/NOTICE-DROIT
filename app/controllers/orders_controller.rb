class OrdersController < ApplicationController
  # def index
  #   @orders = Order.all
  # end

  # def show
  #   @order = Order.new()
  # end

  def new
    @order = Order.new
    # ai je besoin de specility.id ?
    # si oui, alors il faut nester la route du order/new (voir routes.rb)
  end

  def create
  end
end
