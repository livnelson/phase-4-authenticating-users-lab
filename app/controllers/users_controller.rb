class UsersController < ApplicationController

    def index
        render json: User.all, status: :ok
    end

    def me
        user = User.find_by(id: session[:user_id])
        if user
          render json: user
        else
          render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

end
