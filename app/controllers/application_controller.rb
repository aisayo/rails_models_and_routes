class ApplicationController < ActionController::Base

    def root 
        redirect_to new_donation_path
    end 
end
