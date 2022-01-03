class UsersController < ApplicationController



    def index
        user_all = User.all
        render json: user_all
    end
    
    def show
        user = User.find(session[:user_id])
        session[:user_id] = user.id
        render json: user
      end
    end


    # def show 
    #     user = User.find(session[:user_id])
    #     session[:user_id] = user.id
    #     render json: user
    # end

