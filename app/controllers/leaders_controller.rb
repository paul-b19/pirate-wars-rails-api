class LeadersController < ApplicationController
  
  # GET /leaders/
  def index
    leaders = Leader.top_ten
    render json: leaders, except: [:created_at, :updated_at]
  end

  # POST /leaders/
  def create
    leader = Leader.create!(player_params)
    render json: leader, except: [:created_at, :updated_at]
  end

  # PUT /leaders/:id
  def update
    leader = Leader.find(params[:id])
    leader.update(player_params)
    render json: leader, except: [:created_at, :updated_at]
  end

  private

  def player_params
    params.permit(:name, :avatar, :wins, :losses, :accuracy, :id)
  end

end
