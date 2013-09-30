class OrgsController < ApplicationController

 def index


 end


 def search
  if params[:keyword].blank?
    @search_results = []
  else  
    @search = Org.search do
      fulltext params[:keyword]
    end
    @search_results = @search.results
  end
 end

 def show
 
 end

 def new
 	@org = Org.new()
 end

 def create
 	puts "*" * 100
 	puts params
 	puts "*" * 100
 	@org = Org.create(params[:org])
 	if @org.save
 		redirect_to org_path(@org)
 	else
 		@errors = @org.errors.full_messages
 		redirect_to new_org_path	
 	end
 end



end
