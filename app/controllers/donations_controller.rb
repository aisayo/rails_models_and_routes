class DonationsController < ApplicationController
  before_action :set_donation, except: [:index, :new, :create]
  
  def index 
    @donations = Donation.all
  end

  def new 
   @donation = Donation.new
  end

  def create 
    @donation = Donation.new(donation_params)
    if @donation.save 
      redirect_to donation_path(@donation)
    else 
      render :new
    end 
  end 

  def show 
  end

  def edit
  end

  def update 
    if @donation.update(donation_params)
      redirect_to donation_path(@donation)
    else 
      render :edit
    end 
  end 

  def destroy
    @donation.destroy
    redirect_to donations_path
  end 

  private 

  def donation_params 
    params.require(:donation).permit(:amount, :date)
  end 

  def set_donation
    @donation = Donation.find_by_id(params[:id])
  end 

end
