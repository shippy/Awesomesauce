class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def create
    # # Log things
    # Rails.logger.info params[:headers][:subject]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:reply_plain]
    Rails.logger.info params[:html]
    
    # Is the user registered?
    if User.all.map(&:email).include? params[:from] # thanks, Adam Bray!
      
      # Manipulation of the reply
      reply = params[:reply_plain] #.gsub("<3", "&lt;3") # special replacement for "<3"
      reply = reply.split("\r\n").split("\n") # splitting by newlines
      if reply[reply.length-1].include? "aweoftoday@gmail.com" # split the top reply line
        reply = reply[0...reply.length-2]
      end
      # Anti-XSS
      reply = Sanitize.clean(reply.join(" ")).strip
      
      # Log
      puts "Recording the following as ATD for user" + params[:from]
      puts reply
      
      # Save ATD
      @thought = Thought.new
      @thought.body = reply
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
