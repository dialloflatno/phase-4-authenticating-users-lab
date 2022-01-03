
class SessionsController < ApplicationController


    def create
      user = User.find_by(username: params[:username])
      session[:user_id] = user.id
      render json: user
    end
    def destroy
      session.delete :user_id
      head :no_content
    end
  end





# class SessionsController < ApplicationController

#     def create 
#         new_user = User.find_by(username: params[:username])
#         session[:user_id] = new_user.id
#         render json: new_user
#     end


#     def destroy
#         session.delete :user_id
#         head :no_content
#     end

# end
