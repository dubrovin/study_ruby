class PostsController < ApplicationController

    def index
    # instance param
    @posts = Post.all

    end

    def show
    end

    private
        def post
            @post ||= Post.find(params[:id])
        end

        helper_method :post
end