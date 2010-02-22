class AdminController < ApplicationController
	before_filter :authenticate
	
	def index
		@products = Product.all(:order => "id desc")
		@fotos = Factory.all(:order => "id desc")
		@contatos = Contact.all(:order => "id desc")
	end
	
	def check_products
		@product = Product.find(params[:p_id])
		@product.each do |d|
			d.destroy
		end
		redirect_to admin_index_path
  end
  
	def check_fotos
		@foto = Factory.find(params[:f_id])
		@foto.each do |d|
			d.destroy
		end
		redirect_to admin_index_path
  end
	
end
