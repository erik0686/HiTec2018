class RegistrationMailer < ActionMailer::Base
  helper MailerHelper
  default :from => 'donotreply@hitec.com'

  # send a signup email to the student, pass in the student object that   contains the student's email address
  def send_signup_email(student, email)
    @email = email
    @student = student
    mail( :to => @email,
    :subject => 'Gracias por registrarte a Hi!Tec 2018' )
  end
end
