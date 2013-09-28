class OrgsController < ApplicationController

 def index
 end

 def search
  if params[:search].blank?
    @search_results = []
  else  
    @search = Org.search do
      fulltext params[:search]
    end
    @search_results = @search.results
  end
 end

 def show
 end 





end
