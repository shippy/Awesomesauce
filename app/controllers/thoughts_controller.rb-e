class ThoughtsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :restrict_to_development, :only => [:send_summary, :send_reminder]
  # via http://stackoverflow.com/questions/1207424/can-i-restrict-rails-controller-methods-to-development-environment
  
  
  # GET /thoughts
  # GET /thoughts.json
  def index
    # @thoughts = Thought.all
    if Ability.new(current_user).can? :manage, :all
      @thoughts = Thought.all
    else
      @thoughts = Thought.where(:user_id => current_user.id).all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thoughts }
    end
  end

  # GET /thoughts/1
  # GET /thoughts/1.json
  def show
    @thought = Thought.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thought }
    end
  end

  # GET /thoughts/new
  # GET /thoughts/new.json
  def new
    @thought = Thought.new
    @thought.user = current_user
    @thought.date = DateTime.now

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thought }
    end
  end

  # GET /thoughts/1/edit
  def edit
    @thought = Thought.find(params[:id])
    if @thought.user != current_user
      redirect_to :root_path
    end
  end

  # POST /thoughts
  # POST /thoughts.json
  def create
    @thought = Thought.new(params[:thought])
    @thought.user = current_user
    @thought.date = DateTime.now

    respond_to do |format|
      if @thought.save
        format.html { redirect_to action: "index", notice: 'Thought was successfully created.' }
        format.json { render json: @thought, status: :created, location: @thought }
      else
        format.html { render action: "new", notice: "There was an error." }
        format.json { render json: @thought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thoughts/1
  # PUT /thoughts/1.json
  def update
    @thought = Thought.find(params[:id])

    respond_to do |format|
      if @thought.update_attributes(params[:thought])
        format.html { redirect_to @thought, notice: 'Thought was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thoughts/1
  # DELETE /thoughts/1.json
  def destroy
    @thought = Thought.find(params[:id])
    @thought.destroy

    respond_to do |format|
      format.html { redirect_to thoughts_url }
      format.json { head :no_content }
    end
  end
  
  
  
  # Experimental mailer methods - for development environment
  def send_summary
    WeeklySummary.summary(current_user).deliver
    # render :text => 'Summary sent', :status => 200
    redirect_to :controller => 'home', :action => 'index', :notice => "Summary sent!"
  end
  def send_reminder
    DailyReminder.query(current_user).deliver
    redirect_to :controller => 'home', :action => 'index', :notice => "Reminder sent!"
  end
  
  protected
      # this method should be placed in ApplicationController
      def restrict_to_development
        head(:bad_request) unless Rails.env.development?
      end
end
