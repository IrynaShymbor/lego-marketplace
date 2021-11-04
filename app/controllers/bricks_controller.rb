class BricksController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :find_brick, only: %i[show edit update destroy]

  def index
    @bricks = Brick.all
  end

  def show
  end

  def new
    @brick = Brick.new
  end

  def create
    @brick = current_user.bricks.new(bricks_params)

    if @brick.save
      redirect_to @brick
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @brick.update(bricks_params)
      redirect_to @brick
    else
      render :edit
    end
  end

  def destroy
    @brick.destroy

    redirect_to root_path
  end

  private

  def find_brick
    @brick = Brick.find(params[:id])
  end

  def bricks_params
    params.require(:brick).permit(:name, :description, :price, :category_id)
  end
end
