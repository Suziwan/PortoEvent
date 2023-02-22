class UserMailer < ApplicationMailer
  default from: 'test@yopmail.com'

  def welcome_email(user)
    # On récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    # On définit une variable @url qu'on utilisera dans la view d’e-mail
    @url = 'http://localhost:3000/' 

    # C'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Welcome!') 
  end
end
