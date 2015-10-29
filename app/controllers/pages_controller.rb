require "pry"
class PagesController < ApplicationController
  before_action :set_auth
  before_action :authenticate_user!, :current_user, only: [:profile]

  def index
    if current_user
      redirect_to :controller => "repositories", :action => "index"
    end
  end

  def profile
  end

  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end

  # def repo_params
  #   params.require(:repository).permit(:name, :description, :full_name, :username, :email)
  # end

end
