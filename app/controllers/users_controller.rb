class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email],
                    phone: params[:phone],
                    birthdate: params[:birthdate],
                    user_type: params[:user_type],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )

    if @user.save
      UserMailer.welcome_email(@user).deliver_later
      flash[:success] = "You successfully created an account!"
      redirect_to "/users"
    else
      @user.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
                first_name: params[:first_name],
                last_name: params[:last_name],
                email: params[:email],
                phone: params[:phone],
                birthdate: params[:birthdate],
                user_type: params[:user_type]
                )

    flash[:success] = "Your account information has been updated."
    redirect_to "/users"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    flash[:success] = "Your account was deleted. :("
    redirect_to '/'
  end
end
