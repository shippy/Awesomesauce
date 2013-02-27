class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def create
    Rails.logger.info params[:headers][:subject]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:html]

    # Do some other stuff with the mail message
    if User.all.map(&:email).include? params[:envelope][:from] # thanks, Adam Bray!
      puts "User is correct!"
      puts "Recording the following as ATD:"
      puts params[:plain].split("\n").first
      @thought = Thought.new
      @thought.body = params[:plain].split("\n").first
      @thought.user = User.where(:email => params[:envelope][:from])
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
