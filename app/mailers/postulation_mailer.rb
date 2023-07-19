class PostulationMailer < ApplicationMailer
    def postulation_email(postulation)
        @postulation = postulation
        mail(to: @postulation.client.email, subject: 'Postulación recibida')
    end

end
