class OrgsController < ApplicationController

 def index
 	  
  # if params[:keyword].blank?
  #   return @search_results = []
  # else  
  #   search = Org.search do
  #     fulltext params[:keyword]
  #   end
  #   @search_results = search.results  
  # end
  # @keyword = params[:keyword] 
  # redirect_to show_url(params[:keyword]) if params[:keyword]
  render "orgs/show" if params[:keyword]
 end

 def show
  # @ur = URI(request.fullpath)
  # @keyword = /keyword=(.+)&/.match(URI(request.fullpath))
  if @keyword.blank?
    return @search_results = []
  else  
    search = Org.search do
      fulltext @keyword
    end
    @search_results = search.results  
  end
 end

 def search_result
  
 end

end
