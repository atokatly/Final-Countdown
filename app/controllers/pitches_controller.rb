class PitchesController < ApplicationController
  def index

  end

  def new
    @pitch = Pitch.new
  end

  def create
    @student = Student.find_or_create_by(full_name: params[:pitch][:students][:full_name], phase_num: params[:pitch][:students][:phase_num])
    @pitch = @student.pitches.new(title: params[:pitch][:title], description: params[:pitch][:description])

    if @pitch.save

      if @student.pitches.length >= 2
        redirect_to thankyou_index_path
      else
        # TODO: fix notice
        redirect_to new_pitch_path, notice: "Pitch was successfully created."
      end
    end
  end
end
