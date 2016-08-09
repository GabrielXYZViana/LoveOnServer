class CheckinController < ApplicationController

  def create
    current_user = User.find_by_token(params[:user_token])
    checkin = Checkin.create
    checkin.user = current_user
    location = Location.find_by_token(params[:location_token])
    checkin.location = location
    if checkin.save
      render json: checkin
    end
  end

  # private
  #
  # def checkin_params
  #   params.require(:checkin).permit(:id, user_attributes: [:id, :name])
  # end

end
