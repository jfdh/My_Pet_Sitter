class UsersController < ApplicationController
  def index
    if params[:query].present?
      @users = User.where("location ILIKE ?", "%#{params[:query]}%")
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window: render_to_string(partial: "info_window", locals: { user: user }),
          image_url: helpers.asset_url('petsittericon.jpg')
        }
      end
    else
      @users = User.all
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window: render_to_string(partial: "info_window", locals: { user: user }),
          image_url: helpers.asset_url('petsittericon.jpg')
        }
      end
    end
    # @users = User.where(pet_sitter: true)
  end
end
