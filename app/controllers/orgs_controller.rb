class OrgsController < ApplicationController

respond_to :html, :xml, :json
  def index
  end

  def search
    @defaults = {}
    if params[:filter]
      @defaults[:cause] = params[:filter][:cause]
      @defaults[:location] = params[:filter][:location]
      @defaults[:transparency] = params[:filter][:transparency]
    end

    @filters = []
    @filters << { :name => "transparency", :options => [0,1,2,3] }
    @filters << { :name => "cause", :options => Cause.uniq.pluck(:description) }
    @filters << { :name => "location", :options => Org.uniq.pluck(:province) }

    @search_results = Search.results_for(params)
  end
  
  def show
    @org = Org.find(params[:id])
  end

  def new
  	@org = Org.new

  @org.objectives << Objective.new

  @org.legal = Legal.new
  @legalnames = Legal.pluck(:legal_type)
  @provincenames = Province.pluck(:name)
  @causenames = Cause.pluck(:description)
  @agegroups = Age.pluck(:description)

  end

  def create
  	puts "*" * 100
  	@org = Org.create(params[:org])
  puts "*" * 100
  	if @org.save
  		redirect_to org_path(@org)
  	else
  		@errors = @org.errors.full_messages
  		redirect_to new_org_path	
  	end
  end

end
