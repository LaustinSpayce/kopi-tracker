class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @kopis = Kopi.all
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    @order.save
    redirect_to @order
  end

  def update
  end

  def destroy
  end

private

  def order_params
    params.require(:order).permit(:kopi_id, :weight)
  end

end