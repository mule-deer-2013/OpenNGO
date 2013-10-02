class OrgsController < ApplicationController

respond_to :html, :xml, :json
  def index
  end

  def search
    @search_results = []
    if params[:search_terms].blank?
      @search_results = Org.all
    end 
    if params[:filter].nil?  
      search = Sunspot.search Org, Cause, Province do
        fulltext(params[:search_terms])
      end
      search.results.each do |r|
        if r.is_a? Org
          @search_results << r
        elsif r.respond_to? :orgs
        @search_results += r.orgs
        end
      end
    end
    if params[:search_terms].nil? 
      @search_results = []
      search_org = Org.search { with :transparency, params[:filter][:transparency].to_i}.results
      search_cause = Cause.search { fulltext(params[:filter][:cause]) }.results.first.orgs
      search_location = Province.search { fulltext(params[:filter][:location]) }.results.first.orgs
      search_org = search_cause + search_location if params[:filter][:transparency].blank?
      search_cause = search_org + search_location if params[:filter][:cause].blank?
      search_location = search_org + search_cause if params[:filter][:location].blank?
      Org.all.each do |s|
        @search_results << s if (search_org.include?(s) && search_cause.include?(s) && search_location.include?(s))
    end
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
