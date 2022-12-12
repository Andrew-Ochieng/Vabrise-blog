class PostsController < ApplicationController
    def index
        render json: Post.all, status: :ok
    end

    def show
        post = Post.find(params[:id])
        render json: post, status: :ok
    end
    
    
end
