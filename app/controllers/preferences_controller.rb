class PreferencesController < ApplicationController
  def index

  end

  def new
    @preference = Preference.new
    @pitchday = Pitchday.find_by(id: 1)
  end

  def create
    @student = Student.find_or_create_by(full_name: params[:preference][:students][:full_name])
    # @preference = @pitchday.pitches.find(title: params[:pitch][:title], description: params[:pitch][:description])

    if @preference.save


    end
  end
end
