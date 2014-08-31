class SignsController < ApplicationController

  def index
  end

  def throws
    sign = params[:sign]
    @user_sign = Sign[sign[:name].to_sym]
    @rand_sign = Sign.random
    @result = @user_sign.move(@rand_sign)
  end

end
