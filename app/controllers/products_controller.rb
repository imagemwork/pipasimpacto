class ProductsController < ApplicationController

  layout "application", :only => "index"
   before_filter :authenticate, :only => [:new, :edit, :destroy, :create]
  
   
  def index
		@products = Product.busca(params[:busca])
  end

  def show
    @product = Product.find(params[:id])
 		render :layout => "admin"
  end

  def new
   
    @product = Product.new   
     render :layout => "admin"
  end

  def edit
    @product = Product.find(params[:id])
    render :layout => "admin"
  end

  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Produto cadastrado com sucesso.'
        format.html { redirect_to(:controller => "admin", :action => "index") }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to :controller => "admin", :action => "index" }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
    end
  end
  
  
end
