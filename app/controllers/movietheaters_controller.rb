class MovietheatersController < ApplicationController
  # This is the client, the actual movie complex
  def index    
  end

  def new
  end

  def create
    @movietheater = Movietheater.create(
                                        name: params[:name]
                                        )
  end
end