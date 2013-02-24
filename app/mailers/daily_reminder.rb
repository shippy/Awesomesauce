class DailyReminder < ActionMailer::Base
  default from: "aweoftoday@gmail.com"
  default reply_to: "688bc4f4e879c7e9f137@cloudmailin.net"
  
  def query(user)
    mail(:to => user.email, :subject => "What are you grateful for today?")
  end
end
