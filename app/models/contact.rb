class Contact < ActiveRecord::Base
	validates_presence_of :nome, :email, :assunto, :mensagem, :message => "não pode ser branco."
	
	validates_format_of :email,
                      :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => "parece não ser válido"	
end
