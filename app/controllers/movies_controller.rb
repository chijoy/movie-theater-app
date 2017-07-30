class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(
                      auditorium: params[:auditorium],
                      title: params[:title],
                      rating: params[:last_name],
                      female_lead: params[:female_lead],
                      male_lead: params[:male_lead],
                      year_release: params[:year_release],
                      run_time: params[:run_time]
                      )
    if @movie.save
      flash[:success] = "You successfully added a new movie!"
      redirect_to "/"
    else
      @movie.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
                  auditorium: params[:auditorium],
                  title: params[:title],
                  rating: params[:last_name],
                  female_lead: params[:female_lead],
                  male_lead: params[:male_lead],
                  year_release: params[:year_release],
                  run_time: params[:run_time]
                  )
    flash[:success] = "The movie information has been updated."
    redirect_to "/"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy

    flash[:success] = "The movie was removed. :("
    redirect_to '/'
  end
end