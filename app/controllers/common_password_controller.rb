class CommonPasswordController < ApplicationController
  def index
    @password = CommonPassword.all
  end
end
