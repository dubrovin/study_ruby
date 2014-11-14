class PostsController < ApplicationController

    def index
    # instance param
    @posts = Post.all

    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        puts params
        Post.create(post_params)
        # flash[:notice] = "Post was successfully created"
        redirect_to posts_path, notice: "Post was successfully created"
    end

    private
        def post
            @post ||= Post.find(params[:id])
        end

        def post_params
            params.require(:post).permit(:title, :text)
        end

        helper_method :post
end