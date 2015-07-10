class UserMailer < ApplicationMailer
  # layout "user_mailer"  # css is not showing up properly when using a layout

  # TODO need to change this to work in production
  RESET_LINK_BASE = "http://localhost:3000/reset_password/"

  def registration_email(registration)
    @registration = registration
    attachments.inline['logo_handwriting.png'] = File.read('app/assets/images/logo_handwriting.png')

    mail(to: @registration.email, subject: "Founder Traits - Registration")
  end

  def signup_email(user)
    @user = user
    attachments.inline['logo_handwriting.png'] = File.read('app/assets/images/logo_handwriting.png')

    mail(to: @user.email, subject: "Founder Traits - Signup")
  end

  def request_password(user, token)
    @user = user
    @reset_link = RESET_LINK_BASE + token
    attachments.inline['logo_handwriting.png'] = File.read('app/assets/images/logo_handwriting.png')

    mail(to: @user.email, subject: "Founder Traits - Password Reset")
  end
end
