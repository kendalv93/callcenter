class HomesController < ApplicationController


  def index
    @home = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def update
    render :new
  end

  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to new_home_url
    else
      redirect_to new_home_url
    end
  end


  def render(*args)
    options = args.last.is_a?(Hash) ? args.last : {}

    if alert = options.delete(:alert)
      flash[:alert] = alert
    end

    if notice = options.delete(:notice)
      flash[:notice] = notice
    end

    if other = options.delete(:flash)
      flash.update(other)
    end

    super(*args)


  end


  private
  def home_params
    params.require(:home).permit(:category, :sku, :comments)
  end

end
