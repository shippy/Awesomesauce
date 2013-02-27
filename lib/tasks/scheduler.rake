desc "This is a weekly summary about the good things in all users lives"
task :weekly_summary => :environment do
  if Time.now.monday?
    User.all.each do |u|
      WeeklySummary.summary(u).deliver
        puts "Sending weekly summary to" + u.email
    end
  end
end

desc "This is a daily reminder to all users to add their happy moment"
task :daily_reminder => :environment do
  User.all.each do |u|
    DailyReminder.query(u).deliver
    puts "Sending daily reminder to" + u.email
  end
end
