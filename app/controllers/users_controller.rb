class UsersController < ApplicationController

  def index
    @users = User.where(pet_sitter: true)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
