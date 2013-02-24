class DailyAwesome < ActionMailer::Base
  default from: "awesomesauce@podhajsky.net"
  
  def awesome_mail(user)
    @user = user
    @url = "awesomesauce.podhajsky.net"
    mail(:to => user.email, :subject => "What are you grateful for today?")
end
