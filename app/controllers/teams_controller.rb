class TeamsController < ApplicationController
  def new
    @team = Team.new
    @wrestlers = Wrestler.all
  end

  def create
    team = Team.create team_params
    team.user_id = @current_user.id
    redirect_to team
  end

  def index
    @teams = Team.all
  end

  def show
    @teams = Team.all
  end

  private

  def team_params
    params.require(:team).permit(:name, :wrestler_id => [])
  end
end
