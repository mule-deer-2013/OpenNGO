class OrgsController < ApplicationController

 def index
 end

 def search
  if params[:search_terms].blank?
    @search_results = []
  else
    @search = Sunspot.search Org, Province, Cause do
    	keywords(params[:search_terms])
    end
    @search_results = []
    @search.results.each do |org_or_cause_or_province|
      if org_or_cause_or_province.is_a? Org
        @search_results << org_or_cause_or_province
      elsif org_or_cause_or_province.respond_to? :orgs
        @search_results += org_or_cause_or_province.orgs
      end
    end
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
