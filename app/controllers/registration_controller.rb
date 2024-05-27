class RegistrationController < ApplicationController
    def new
        @user = User.new#instance variable so it can be used in the view
    end

end