class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    
    #GET /users
    def index
        @users = User.all
        render json: @users, except: [:updated_at, :created_at]
    end
    private
      # Use callbacks to share common setup or constraints between actions.
        def set_user
            @user = User.find(params[:id])
        end
end
