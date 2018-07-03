class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    binding.pry
    set_post!
    params.each do |key, value|
      @post.key = value if @post.has_attribute?(key) )
    end
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
