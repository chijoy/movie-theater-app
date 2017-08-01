class AuditoriumsController < ApplicationController
  # Auditoriums are the many movie theaters within the movie theater complex.
  # Including new, create, edit, update, destory, in case they expand or go through renovations.
  def index
    @auditoriums = Auditorium.all
  end

  def new
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.new(
                                movietheater_id: params[:movietheater_id]
                                )
    if @auditorium.save
      flash[:success] = "Hey, you added a new auditorium!"
      redirect_to "/auditoriums"
    else
      @auditorium.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @auditorium = Auditorium.find_by(id: params[:id])
  end

  def edit
    @auditorium = Auditorium.find_by(id: params[:id])
  end

  def update
    @auditorium = Auditorium.find_by(id: params[:id])
    @auditorium.update(
                      movietheater_id: params[:movietheater_id]
                      )
    flash[:success] = "Your auditorium information has been updated."
    redirect_to "/auditoriums"
  end

  def destroy
    @auditorium = Auditorium.find_by(id: params[:id])
    @auditorium.destroy

    flash[:success] = "Your auditorium was destroyed. :("
    redirect_to '/'
  end
end