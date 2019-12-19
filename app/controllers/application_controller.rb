class ApplicationController < ActionController::Base
  def after_sign_in_path_for(article)
    new_article_path
  end
end
