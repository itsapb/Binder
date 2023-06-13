class UsersController < ApplicationController

  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
        marker_html: render_to_string(partial: "marker", locals: {user: user})
      }
    end
  end
end
