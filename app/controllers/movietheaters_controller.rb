class MovietheatersController < ApplicationController
  # This is the client, the actual movie complex
  def index 
     @movietheaters = Movietheater.all
  end

  def new
    @movietheater = Movietheater.new
  end

  def create
    @movietheater = Movietheater.new(
                                    name: params[:name]
                                    )
    if @movietheater.save
      flash[:success] = "You successfully added a new movietheater!"
      redirect_to "/"
    else
      @movietheater.errors.full_messages
      render 'new.html.erb'
    end
  end
end