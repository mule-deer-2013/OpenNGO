class OrgsController < ApplicationController

 def index
  
 end

 def search
  if params[:search_terms].blank?
    @search_results = Org.all
  else
    @search_results = []
    @search = Sunspot.search Org, Province, Cause do      
    	keywords(params[:search_terms])
    end

    @search.results.each do |opc|
      if opc.is_a? Org
        @search_results << opc
      elsif opc.respond_to? :orgs
        @search_results += opc.orgs
      end
    end
  end
  @search_results

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
