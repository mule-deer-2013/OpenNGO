class OrgsController < ApplicationController
respond_to :html, :xml, :json
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
  
  @org.objectives.build
  @org.branches.build
  @org.locations.build
  @org.programs.build
  @org.affiliations.build
  @org.networks.build
  @org.prizes.build
  board = @org.build_board
  board.people.build
  advisory = @org.build_advisory
  advisory.people.build

  @org.build_legal
  # @org.ages.build

  @legalnames = Legal.pluck(:legal_type)
  @affilitypes = ["International Foundation", "Business", "National Foundation", "International Government", "Local Government",
  "International Organization", "ONG", "Educational Institution"]
  
  @provincenames = Province.pluck(:name)
  @provinceids = Province.pluck(:id)
  @provincearray = @provincenames.zip(@provinceids)

  @causes = Cause.all
  @ages = Age.all
  @provinces = Province.all
  @activities = Activity.all
  
  @agegroups = Age.pluck(:description)
 end

 def create

 	puts "*" * 100
  puts params
 	puts "*" * 100
  @org = Org.new(params[:org])
  @org.causes << Cause.where(:id => params[:causes])
  @org.ages << Age.where(:id => params[:ages])
  @org.locations << Location.where(:id => params[:provinces])
  # @org.people << Person.where(:id => params[:people])
  @org.activities << Activity.where(:id => params[:activities])
  # @org.affiliations << affiliations.where(:id => params[:affiliations])
  
 	if @org.save
 		redirect_to org_path(@org)
 	else
 		@errors = @org.errors.full_messages
 		redirect_to new_org_path	
 	end
 end





end
