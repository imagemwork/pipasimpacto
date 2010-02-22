class ContactsController < ApplicationController
	before_filter :authenticate, :only => [:index]
  def index
    @contacts = Contact.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @contact = Contact.new
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @contact = Contact.new(params[:contact])
    respond_to do |format|
      if @contact.save
      	Emailer::deliver_contact_email(params[:contact])
        flash[:notice] = 'Mensagem Enviada com sucesso, obrigado.'
        format.html { redirect_to(new_contact_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
