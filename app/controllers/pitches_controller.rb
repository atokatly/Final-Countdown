class PitchesController < ApplicationController
  def new
    @pitch = Pitch.new

  end

  def create
    p "=" * 25
    p pitch_params
    @pitch = Pitch.new(pitch_params)
    @student = Student.find_or_create_by(full_name: pitch_params[:full_name])

    if @pitch.save
      redirect_to @pitch, notice: "Pitch was successfully created."
    else
      render :new
    end
  end


  private
  def pitch_params
    params.require(:pitch).permit(:title, :description, :final, :student)
  end

end
