class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :admin_mode, only: [:new, :edit, :update, :destroy]
  before_action :find_post_by_id, only: [:show, :edit, :update, :destroy]
  def index
    @post = Post.all.order("created_at DESC")
  end
  
  def new
    @post = current_user.posts.build
  end
  
  def create
    @post = current_user.posts.build(post_params)
    
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @post.update(posts_params)
      redirect_to @post
    else
      render :edit, :notice => "Post didn't successfully updated due to: "
    end
  end
  
  private
  
  def find_post_by_id
    @posts = Blog.find(params[:id])
  end
  
  def admin_mode
    if current_user.role == 'admin'
      request.referrer
    else
      redirect_to posts_path, :alert => "You shouldn't be here. Admin access is required"
    end
  end
  
  def post_params
    params.require(:post).permit(:name, :content, :published_at)
  end
end
