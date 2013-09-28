class OrgsController < ApplicationController

 def index
 	if params[:search].blank?
 		return @search_results = []
 	else 	
	 	@search = Org.search do
	    fulltext params[:search]
	  end
	  @search_results = @search.results
	  puts @search_results
	  puts "Should be empty!! #{params[:search]}"
	end
 end

 def search
 end

 def show
 end 





end
