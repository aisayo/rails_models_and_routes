class DonationsController < ApplicationController
  def index # responsibility: show all donations route: '/donations' path: donations_path 
    @donations = Donation.all
  end

  def new # responsibility: render a new form route: /donations/new path: new_donation_path 
   @donation = Donation.new
  end

  def create # responsibility: process submitted new form route: '/donations' path: donations_path(only used on server side)
    @donation = Donation.new(donation_params)
    if @donation.save 
      redirect_to donation_path(@donation)
    else 
      render :new
    end 
  end 

  def show # responsible: single donation route: '/donations/:id' path: donation_path(donation_id)
    @donation = Donation.find_by_id(params[:id])
  end

  def edit
    @donation = Donation.find_by_id(params[:id])
  end

  def update 
    @donation = Donation.find_by_id(params[:id])
    @donation.update(donation_params(:amount))
  end 

  def destroy
    byebug
    @donation = Donation.find_by_id(params[:id])
    @donation.destroy
    redirect_to donations_path
  end 

  private 

  def donation_params # strong params: permits fields being submitted
    params.require(:donation).permit(:amount, :date, :user_id, :organization_id)
  end 

  # def donation_params(*args)
  #   params.require(:donation).permit(*args)
  # end 

end
