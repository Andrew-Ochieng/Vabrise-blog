class PostsController < ApplicationController
    def index
        render json: Post.all, status: :ok
    end

    def show
        post = Post.find(params[:id])
        render json: post, status: :ok
    end

    def create
        post = Post.new(post_params)
        render json: post, status: :created
    end

    def destroy
        post = Post.find_by(id: params[:id])
        post.destroy

        head :no_content
    end
    
    

    private

    def post_params
        params.permit(:title, :image_url, :content)
    end

    def record_not_found
        render json: {error: "Post not found"}, status: :not_found
    end
    
    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
    
    
    
    
end
