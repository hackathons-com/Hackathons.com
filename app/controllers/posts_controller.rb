class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @post = Post.all.order("created_at DESC")
  end
end
