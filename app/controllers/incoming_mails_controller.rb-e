class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def create
    # Log things
    Rails.logger.info params[:headers][:subject]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:html]
    
    # Is the user registered?
    if User.all.map(&:email).include? params[:from] # thanks, Adam Bray!
      puts "User is correct!"
      puts "Recording the following as ATD:"
      puts params[:reply_plain].gsub("\n", " ").strip
      @thought = Thought.new
      @thought.body = params[:reply_plain].gsub("\n", " ").strip
      @thought.user = User.where(:email => params[:from]).first
      @thought.date = DateTime.now
      
      if @thought.save
        render :text => 'Success', :status => 200
      else
        render :text => 'Internal failure', :status => 501
      end
    else
      render :text => 'Unknown user', :status => 404 # 404 would reject the mail
    end
  end
end
