class PitchdaysController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @pitchday = Pitchday.new
  end

  def create
    @old_round = current_round
    change_current_round_status(@old_round)
    @pitchday = Pitchday.new(pitchday_params)
    @round = @pitchday.rounds.new(round_num: round_number, active_round: true)
    @old_round.save
    p @round
    @pitchday.user_id = current_user.id if current_user

    if @pitchday.save && @round.save
      redirect_to pitchdays_path
    else
       p @pitchday.errors
      redirect_to new_pitchday_path
    end
  end

  private

  def pitchday_params
    params.require(:pitchday).permit(:size, :cohort)
  end
end
