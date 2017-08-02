class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(
                    user_id: params[:user_id],
                    subtotal: params[:subtotal],
                    tax: params[:tax],
                    total: params[:total],
                    )
    if @order.save
      flash[:success] = "Your order for a ticket was successful!"
      redirect_to "/"
    else
      @order.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def edit
    @order = Order.find_by(id: params[:id])
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.update(
                  user_id: params[:user_id],
                  subtotal: params[:subtotal],
                  tax: params[:tax],
                  total: params[:total],
                  )
    flash[:success] = "The order information has been updated."
    redirect_to "/"
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy

    flash[:success] = "The order was deleted. :("
    redirect_to '/'
  end
end
