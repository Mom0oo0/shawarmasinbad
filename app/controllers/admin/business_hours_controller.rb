class Admin::BusinessHoursController < AdminController
  def index
    @business_hours = BusinessHour.all.order(:position)
  end

  def edit
    @business_hour = BusinessHour.find(params[:id])
  end

  def update
    @business_hour = BusinessHour.find(params[:id])
    if @business_hour.update(business_hour_params)
      redirect_to admin_business_hours_path, notice: "Hours updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def business_hour_params
    params.require(:business_hour).permit(:opens_at, :closes_at, :day, :is_closed)
  end
end
