class DailyReminder < ActionMailer::Base
  default from: "aweoftoday@gmail.com"
  
  def query(user)
    mail(:to => user.email, :subject => "What are you grateful for today?")
  end
end
