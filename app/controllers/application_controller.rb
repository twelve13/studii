class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # Good job using before_action to ensure users are signed in, but think about whether
  # this is the best UI. Do you want someone visiting your page to be able to see some
  # sort of content before deciding whether or not to sign up?
end
