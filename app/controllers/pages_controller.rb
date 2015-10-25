require "pry"
class PagesController < ApplicationController
  before_action :set_auth
  before_action :authenticate_user!, :current_user, only: [:profile, :my_repos]

  def index
  end

  def profile
  end

  def my_repos
    github = Github.new
    @repos_info = github.repos.list user: current_user.username
    Repository.save_repo_info(@repos_info)
  end

  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end

  # def repo_params
  #   params.require(:repository).permit(:name, :description, :full_name, :username, :email)
  # end

end
