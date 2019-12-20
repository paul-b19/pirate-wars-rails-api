class LeadersController < ApplicationController
  def index
    leaders = Leader.all
    render json: leaders, except: [:created_at, :updated_at]
  end
end
