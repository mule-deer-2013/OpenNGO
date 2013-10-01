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
  end
    @search_results = @search.results
 end

 def show
  @org = Org.find(params[:id])
  @transparency = @org.transparency
  @name = @org.name
  @initials = @org.initials
  @address = @org.address
  @city = @org.city
  @province = @org.province
  @telephone = @org.telephone
  @website = @org.website
  @email = @org.email
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
