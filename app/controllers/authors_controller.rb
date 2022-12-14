class AuthorsController < ApplicationController
    def index
        render json: Author.all, status: :ok
    end
    
end
