class DataCapacitiesController < ActionController::Base
  def index
    @data_capacities = DataCapacity.all
    render '/admin_menu/data_capacities/index'
  end

  def new
    @data_capacity = DataCapacity.new
    render new_data_capacity_path
  end

  def create
    @data_capacity = DataCapacity.new(data_capacity_params)
    if @data_capacity.save
      redirect_to @data_capacity
    else
      flash[:alert] = '失敗'
      render new_data_capacity_path
    end
  end

  def update
  end

  def destroy
  end

  def data_capacity_params
    params.require(:data_capacity).permit(:name)
  end
end