class LandingController < ApplicationController
  
  def home
  	@stores = Store.all

  	if params[:search].present? && !params[:search].nil?
  		@locations = Store.by_distance(:origin => params[:search])
  		@search = params[:search]
  		if (@locations.length >= 5)
  			@limitLocation = @locations.first(5)
  		elsif (@locations.length > 0 && @locations.length < 5)
  			@limitLocation = @locations.first(@locations.length)
  		else
  			@limitLocation = Store.all(:limit => 5)
  		end
  		@firstLocation = @limitLocation.first
  		@secondLocation = @limitLocation.second
  		@thirdLocation = @limitLocation.third
  		@fourthLocation = @limitLocation.fourth
  		@fifthLocation = @limitLocation.fifth				
  	else
  		@search = "none"
    	@locations = Store.all
  		@firstLocation = @locations.first
  		@secondLocation = @locations.second
  		@thirdLocation = @locations.third
  		@fourthLocation = @locations.fourth
  		@fifthLocation = @locations.fifth
  	end
  end

end
