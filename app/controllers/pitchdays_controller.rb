class PitchdaysController < ApplicationController
  def index

  end

  def new
    @pitchday = Pitchday.new
  end

  def create
    @pitchday = Pitchday.new(pitchday_params)
    @pitchday.user_id = current_user.id if current_user
    if @pitchday.save
      redirect_to pitchdays_path
    else
       p @pitchday.errors
      redirect_to new_pitchday_path
    end
  end

  def show

  end

  private

  def pitchday_params
    params.require(:pitchday).permit(:size, :cohort)
  end
end
