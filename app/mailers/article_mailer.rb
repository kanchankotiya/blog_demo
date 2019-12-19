class ArticleMailer < ApplicationMailer
  default :from => "test@example.com"

  def welcome_email(article, user)
    @article = article
    @user = user
    mail(:to => user.email, :subject => "Welcome to My Article Site")
  end
end
