class PreferencesController < ApplicationController
  def index

  end

  def new
    @preference = Preference.new
    @pitchday = Pitchday.find_by(id: 1)
  end

  def create
    @student = Student.find_or_create_by(full_name: params[:pitchday_round_preferences][:students][:full_name])
    @preference = @student.preferences.new(rank: params[:pitchday_round_preferences][:preferences][:rank], round_id: current_round.id, pitch_id: params[:pitchday_round_preferences][:preferences][:pitch_id])

    if @preference.save
      redirect_to pitchday_round_preferences_path
    else
       p @preference.errors
      redirect_to new_pitchday_round_preference_path
    end
  end
end
