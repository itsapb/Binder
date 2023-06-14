class PagesController < ApplicationController
  def home
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
        marker_html: render_to_string(partial: "marker", locals: {user: user})
      }
    end
  end
end
