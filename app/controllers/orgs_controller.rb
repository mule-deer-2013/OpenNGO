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
 end

end
