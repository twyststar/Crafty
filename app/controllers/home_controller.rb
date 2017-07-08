class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index

  end
  def splash
    if current_user
      redirect_to home_index_path
    end
  end
end
