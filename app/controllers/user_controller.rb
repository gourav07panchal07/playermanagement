class UserController < ApplicationController
  def team
    @user = Playerr.all
    @TeamsPlayers = TeamsPlayers.all
  end

  def search
    @player = Playerr.where("name LIKE?", "%" + params[:q]+"%")
  end

  def playerr
    team =  TeamsPlayers.where(playerr_id: current_user.id).pluck(:team_id)
    @show_team = Team.where(id: team)
  end

  def see_player 
    list =  TeamsPlayers.where(team_id: current_user.id).pluck(:playerr_id)
    @list_show = Playerr.where(id: list)
  end

  def playerr_profile
    @profile = Playerr.where(id: current_user.id)
  end

  def team_profile
    @profile = Team.where(id: current_user.id)
  end

  def create
    byebug
    user = TeamsPlayers.create(parms_player)
    if user
      redirect_to user_team_path
    end
  end

  private
   
    def parms_player
      params.require(:user).permit(:team_id, :playerr_id)
    end

end
