class OrgsController < ApplicationController

 def index
 	@search = Org.search do
    fulltext params[:search]
  end
  @search_results = @search.results
 end

 def show
 end 

end
