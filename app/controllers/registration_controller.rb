class RegistrationController < ApplicationController
    def new
        @user = User.new#instance variable so it can be used in the view
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id]= @user.id
            flash[:notice]= "Account created successfully!"
            redirect_to root_path
        else
            redirect_to sign_up_path
            flash[:alert]= "Account could not be created. Please try again."
        end
    end

    private

    def user_params #this is a convention for naming the params method. it is used to define the params that will be passed to the model.
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end