class LeadersController < ApplicationController
  
  def index
    leaders = Leader.top_ten
    render json: leaders, except: [:created_at, :updated_at]
  end

end
