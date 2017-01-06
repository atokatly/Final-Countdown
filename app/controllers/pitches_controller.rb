class PitchesController < ApplicationController
  def new
    @pitch = Pitch.new

  end

  def create

    @student = Student.find_or_create_by(full_name: params[:pitch][:students][:full_name], phase_num: params[:pitch][:students][:phase_num])
    @pitch = @student.pitches.new(title: params[:pitch][:title], description: params[:pitch][:description])

    if @pitch.save
      redirect_to @pitch, notice: "Pitch was successfully created."
    else
      render :new
    end
  end

end
