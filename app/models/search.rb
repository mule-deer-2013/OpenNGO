class Search
  def self.results_for(params)
    @search_results = []
    if params[:search_terms].blank?
      @search_results = Org.all
    end 
    if params[:filter].nil?  
      search = Sunspot.search Org, Cause, Province do
        fulltext(params[:search_terms])
      end
      search.results.each do |r|
        if r.is_a? Org
          @search_results << r
        elsif r.respond_to? :orgs
        @search_results += r.orgs
        end
      end
    end
    if params[:search_terms].nil? 
      @search_results = []
      search_org = Org.search { with :transparency, params[:filter][:transparency].to_i}.results
      search_cause = Cause.search { fulltext(params[:filter][:cause]) }.results.first.orgs
      search_location = Province.search { fulltext(params[:filter][:location]) }.results.first.orgs
      search_org = search_cause + search_location if params[:filter][:transparency].blank?
      search_cause = search_org + search_location if params[:filter][:cause].blank?
      search_location = search_org + search_cause if params[:filter][:location].blank?
      Org.all.each do |org|
        @search_results << org if (search_org.include?(org) && search_cause.include?(org) && search_location.include?(org))
      end
    end
    @search_results
  end
end

