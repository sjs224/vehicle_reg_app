class VehiclesController < ApplicationController
  def new
  	  	@vehicle = Vehicle.new
  end

  def show
    @vehicle = Vehicle.find(params[:id])    
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      flash[:success] = "New vehicle saved!"
      @user = User.find(vehicle.user_id)
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  	@vehicle = Vehicle.find(params[:id])
  end

  def update
  	@vehicle = Vehicle.find(params[:id])
    if @vehicle.update_attributes(vehicle_params)
       flash[:success] = "Profile updated"
       redirect_to users_path 
    else
      render 'edit'
    end
  end

  def destroy
  	vehicle.find(params[:id]).destroy
    flash[:success] = "Vehicle deleted."
    redirect_to users_path
  end

  def index
    @vehicle = Vehicles.all
  end

  private

    def vehicle_params
      params.require(:vehicle).permit(:licence_plate, :make, :model,
                                   :colour, :user_id)
    end

end
