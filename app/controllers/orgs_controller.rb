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



end
