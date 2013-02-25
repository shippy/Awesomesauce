require 'rubygems'
require 'rufus/scheduler'  

# every day
scheduler = Rufus::Scheduler.start_new
scheduler.cron '0 22 * * 1-5' do
  User.all.each do |u|
    DailyReminder.query(u).deliver
  end
end

# every week
scheduler.every('1w') do
  User.all.each do |u|
    WeeklySummary.summary(u).deliver
  end
end
