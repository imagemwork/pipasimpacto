class FactoriesController < ApplicationController
	layout "application", :only => "index"
	before_filter :authenticate, :only => [:new, :edit, :destroy, :create]

  def index
    @factories = Factory.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @factory = Factory.find(params[:id])
    render :layout => "admin"
  end

  def new
    @factory = Factory.new
		render :layout => "admin"
  end


  def create
    @factory = Factory.new(params[:factory])

    respond_to do |format|
      if @factory.save
        flash[:notice] = 'Factory was successfully created.'
        format.html { redirect_to(:controller => "admin", :action => "index") }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def destroy
    @factory = Factory.find(params[:id])
    @factory.destroy

    respond_to do |format|
      format.html { redirect_to(:controller => "admin", :index => "index") }
    end
  end
end
