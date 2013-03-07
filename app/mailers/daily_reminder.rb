class DailyReminder < ActionMailer::Base
  default from: "aweoftoday@gmail.com"
  default reply_to: "688bc4f4e879c7e9f137@cloudmailin.net"
  
  def query(user)
    # Determine what kind of reminder to send
    if th = Thought.where(:user_id => user).last
      last_post = th.date
      if last_post < 2.weeks.ago
        template = :inactive_14
      elsif last_post < 1.week.ago
        template = :inactive_7
      elsif last_post < 3.days.ago
        template = :inactive_3
      else
        template = :normal
      end
    else
      template = :starter
    end
    
    # Mail_content.where(:type => 'daily', :template => template).random
      
    mail(:to => user.email, :subject => "What are you grateful for today?")
  end
end
