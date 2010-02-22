class Emailer < ActionMailer::Base
  
  def contact_email(contact_params, sent_at = Time.now)
        # You only need to customize @recipients.
        @recipients = "pipas@pipasimpacto.com.br"
        @from = contact_params[:nome] + " <" + contact_params[:email] + ">"
        @subject = "(Mensagem do Site) " + contact_params[:assunto]
        @sent_on = sent_at
        @body["contact_mensagem"] = contact_params[:mensagem]
        @body["contact_nome"] = contact_params[:nome]
    end
    
end
