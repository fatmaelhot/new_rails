class PostsController < ApplicationController
 
  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  def show
    @post=Post.find(params[:id])
end
  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(title: params[:title], body: params[:body])

    if @post.save 
    redirect_to @post
    else
    render :new 
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @post = Post.find(params[:id])
          if @post.update(post_params)
              redirect_to @post
          else
              render :edit
          end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post = post.find(params[:id]) 
    @post.destroy
    redirect_to @post
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
