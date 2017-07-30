class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(
                            movie_id: params[:movie_id],
                            movietheater_id: params[:movietheater_id],
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            text_option: params[text],
                            birthdate: params[birthdate]
                            )
    if @customer.save
      flash[:success] = "You successfully created an account!"
      redirect_to "/"
    else
      @customer.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @customer = Customer.find_by(id: params[:id])
  end

  def edit
    @customer = Customer.find_by(id: params[:id])
  end

  def update
    @customer = Customer.find_by(id: params[:id])
    @customer.update(
                      customer: params[:customer])
    flash[:success] = "Your account information has been updated."
    redirect_to "/"
  end

  def destroy
    @customer = Customer.find_by(id: params[:id])
    @customer.destroy

    flash[:success] = "Your account was deleted. :("
    redirect_to '/'
  end
end
