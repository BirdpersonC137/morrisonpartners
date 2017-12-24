class ManagedformsController < ApplicationController
  def new
    @managedform = Managedform.new
  end
  def create
    @managedform = Managedform.new(managedform_params)
    if !verify_recaptcha(model: @managedform) || !@managedform.save
      render 'new'
    elsif @managedform.save
      flash[:notice] = "Thank you for your interest, we will follow up with you shortly!"      
      redirect_to root_path
    end
  end
  private

    def managedform_params
      params.require(:managedform).permit(:full_name, :phone, :email, :withdrawals, :experience,:goals, :risk, :net_worth, :family_assets, :income, :wchance)
    end
end

