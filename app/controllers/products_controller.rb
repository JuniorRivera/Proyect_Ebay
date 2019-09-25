class ProductsController < ApplicationController


  def new
  	@products = Products.new
    end
  def create
  	#render :text => params[:products].inspect

  	@products = Products.new(params[:products])

  if @products.save
    redirect_to :action => :show, :id => @products.id
  else
    render 'new'
  end
 def show
  @products = Products.find(params[:id])
end
	def index
  @products = Products.all
end

  def edit
  @products = Products.find(params[:id])
end

def update
  @products = Products.find(params[:id])

  if @products.update_attributes(params[:post])
    redirect_to :action => :show, :id => @products.id
  else
    render 'edit'
  end
 end

  