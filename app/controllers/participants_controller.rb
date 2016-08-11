class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_param)
    if @participant.save
      session[:participant_id] = @participant.id
      redirect_to peserta_reg_path
    else
      render :new
    end
  end

  def registered
    if session[:participant_id]
      @participant = Participant.find(session[:participant_id])
      session[:participant_id] = nil
    else
      redirect_to root_path
    end
  end

  private

  def participant_param
    params.require(:participant).permit(
      :name,
      :nim,
      :gender,
      :major_id,
      :birth,
      :address,
      :email,
      :phone
    )
  end
end
