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

  def show
    @data_capacity = DataCapacity.find(params[:id])
    render '/admin_menu/data_capacities/show'
  end

  def edit
    @data_capacity = DataCapacity.find(params[:id])
    render '/admin_menu/data_capacities/edit'
  end

  def update
    @data_capacity = DataCapacity.find(params[:id])
    if @data_capacity.update_attributes(data_capacity_params)
      redirect_to @data_capacity
    else
      render '/admin_menu/data_capacities/edit'
    end
  end

  def destroy
  end

  def data_capacity_params
    params.require(:data_capacity).permit(:name)
  end

end