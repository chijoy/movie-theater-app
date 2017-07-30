class SeatsController < ApplicationController
  # Including these in case, well, they could cram in more seats, or remove seats for wheelchair, or rearrange seats to add more space... or make room for a meeting, or a party. Or maybe they start assigning seats. 
  def index
    @seats = Seat.all
  end

  def new
    @seat = Seat.new
  end

  def create
    @seat = Seat.new(
                    auditorium_id: params[:auditorium_id]
                    )
    if @seat.save
      flash[:success] = "You added another seat to the auditorium!"
      redirect_to "/"
    else
      @seat.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @seat = Seat.find_by(id: params[:id])
  end

  def edit
    @seat = Seat.find_by(id: params[:id])
  end

  def update
    @seat = Seat.find_by(id: params[:id])
    @seat.update(
                auditorium_id: params[:auditorium_id]
                )
    flash[:success] = "The seat information has been updated."
    redirect_to "/"
  end

  def destroy
    @seat = Seat.find_by(id: params[:id])
    @seat.destroy

    flash[:success] = "The seat was removed from the auditorium. :("
    redirect_to '/'
  end
end
