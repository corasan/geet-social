class PagesController < ApplicationController
  before_action :set_auth

  def index
  end

  def profile
  end

  def my_repos
    github = Github.new
    @repos = github.repos.list user: current_user.username
  end

  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
end
