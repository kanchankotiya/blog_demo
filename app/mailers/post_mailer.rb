class PostMailer < ApplicationMailer
  default :from => "test@example.com"

  def welcome_email(post, user)
    @post = post
    @user = user
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end
