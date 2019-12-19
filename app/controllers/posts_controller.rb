class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show;end  


  def new
    @post = Post.new
  end

  def edit;end
   

  

  def create
    @user = current_user
    @post = Post.new(post_params)
    
    if @post.save
      PostMailer.welcome_email(@post, @user).deliver
      redirect_to @post
    else
      render 'new'
    end
  end
   


  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
 
    redirect_to posts_path
  end

   
  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :desc, :email, :image)
    end
end
