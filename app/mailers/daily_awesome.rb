class DailyAwesome < ActionMailer::Base
  default from: "awesomesauce@podhajsky.net"
  
  def awesome_mail(user)
    @user = user
    
end
