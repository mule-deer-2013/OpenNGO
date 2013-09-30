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

end
