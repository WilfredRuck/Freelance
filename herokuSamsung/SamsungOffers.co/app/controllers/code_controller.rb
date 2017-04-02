class CodeController < ApplicationController
  def home
  	@code = Offer.last
  end
end
