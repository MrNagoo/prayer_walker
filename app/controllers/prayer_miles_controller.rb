class PrayerMilesController < ApplicationController


  def index
    @prayer_miles = PrayerMile.all
  end

  def new
    @prayer_mile = PrayerMile.new
  end

  def create
    @prayer_mile = PrayerMile.new(prayer_params)
    @prayer_mile.user = current_user
    if @prayer_mile.save
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error saving your distance"
      render 'new'
    end
  end


  private

  def prayer_params
    params.require(:prayer_mile).permit(:description, :distance)
  end
end
