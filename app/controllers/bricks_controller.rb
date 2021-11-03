class BricksController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @bricks = Brick.all
  end

  def show
    @brick = Brick.find(params[:id])
  end
end
