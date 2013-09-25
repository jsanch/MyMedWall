class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end
  def show
    @provider = Provider.find(params[:id])
  end
  def search
    @providers = Provider.tire.search params[:q]

    render :action => "index"
  end
  def create
    @provider = Provider.create(params[:provider])
  end
  def new
    @provider = Provider.new
  end
end
