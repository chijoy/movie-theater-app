class UserMailer < ApplicationMailer
  default from: 'info@themovieapp.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to The Movie App')
  end

end
