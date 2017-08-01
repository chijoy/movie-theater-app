class ShowtimesController < ApplicationController
  def index
    @showtimes = Showtime.all
  end

  def new
    @showtime = Showtime.new
  end

  def create
    @showtime = Showtime.new(
                            movie_id: params[:movie_id],
                            start_time: params[:start_time],
                            end_time: params[:end_time],
                            start_show_date: params[:start_show_date],
                            end_show_date: params[:end_show_date]
                            )
    if @showtime.save
      flash[:success] = "You successfully created a new showtime!"
      redirect_to "/showtimes"
    else
      @showtime.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @showtime = Showtime.find_by(id: params[:id])
  end

  def edit
    @showtime = Showtime.find_by(id: params[:id])
  end

  def update
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.update(
                    movie_id: params[:movie_id],
                    start_time: params[:start_time],
                    end_time: params[:end_time],
                    start_show_date: params[:start_show_date],
                    end_show_date: params[:end_show_date]
                    )
    flash[:success] = "Your showtime has been updated."
    redirect_to "/showtimes"
  end

  def destroy
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.destroy

    flash[:success] = "Your showtime was deleted. :("
    redirect_to '/showtimes'
  end
end
