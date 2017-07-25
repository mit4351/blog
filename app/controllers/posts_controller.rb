class PostsController < ApplicationController
  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    print("ssssssss")
  end

  # POST /posts
  def create
    # render text: params[:post].inspect

    str = "aaaa::::::::::"  << params[:post][:title]
    print(str)
    # @post = Post.new(params[:post])
    @post = Post.new(post_params)
    @post.save
    # redirect_to post_path(@post.id)
    redirect_to @post
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
  end

end
