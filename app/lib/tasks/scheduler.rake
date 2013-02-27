desc "This is a weekly summary about the good things in all users lives"
task :weekly_summary => :environment do
  if Time.now.monday?
    User.all.each do |u|
      WeeklySummary.summary(u).deliver
    end
  end
end

desc "This is a daily reminder to all users to add their happy moment"
task :daily_reminder => :environment do
  User.all.each do |u|
    DailyReminder.query(u).deliver
  end
end

# # every day
# scheduler = Rufus::Scheduler.start_new
# scheduler.cron '0 22 * * 1-5' do
#   User.all.each do |u|
#     DailyReminder.query(u).deliver
#   end
# end
# 
# # every week
# scheduler.every('1w') do
  # User.all.each do |u|
  #   WeeklySummary.summary(u).deliver
  # end
# end