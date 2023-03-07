class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:extrainfo]

  def home
  end

  def extrainfo
  end

end
