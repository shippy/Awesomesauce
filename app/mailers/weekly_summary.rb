class WeeklySummary < ActionMailer::Base
  default from: "aweoftoday@gmail.com"
  
  def summary(user)
    @thoughts = Thought.where(:user_id => user.id).last(5)
    @cute = Cute.random
    mail(:to => user.email, :subject => "All the good things in your life!")
  end
end