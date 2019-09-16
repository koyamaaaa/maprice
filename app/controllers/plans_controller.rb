class PlansController < ActionController::Base

  def index
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(name: params[:name])
    @plan.save
    redirect_to plan_path
  end

  def show
  end

  def update
  end

  def destroy
  end

end