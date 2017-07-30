class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(
                        customer_id: params[:customer_id]
                        )
    if @showtime.save
      flash[:success] = "You successfully created a new showtime!"
      redirect_to "/"
    else
      @ticket.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @ticket = Ticket.find_by(id: params[:id])
  end

  def edit
    @ticket = Ticket.find_by(id: params[:id])
  end

  def update
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.update(
                  customer_id: params[:customer_id]
                  )
    flash[:success] = "Your ticket has been updated."
    redirect_to "/"
  end

  def destroy
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.destroy

    flash[:success] = "Your ticket was deleted. :("
    redirect_to '/'
  end
end
