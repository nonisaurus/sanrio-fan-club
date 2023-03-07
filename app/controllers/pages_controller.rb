class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:vip]

  def home
  end

  def extrainfo

  end
end
