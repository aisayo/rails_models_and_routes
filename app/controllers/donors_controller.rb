class DonorsController < ApplicationController
  def index
    @donors = Donor.all
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.new(donor_params)
    if @donor.save 
      redirect_to donor_path(@donor) 
    else 
      render :new
    end 
  end

private 

  def donor_params
    params.require(:donor).permit(:name, :email, :password)
  end 

end
