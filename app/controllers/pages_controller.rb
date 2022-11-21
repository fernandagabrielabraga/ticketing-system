class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]


  def home
  end

  def log_out
  end

  def tickets
  end

end
