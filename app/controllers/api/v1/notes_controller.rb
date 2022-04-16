class Api::V1::NotesController < ApplicationController

  def index
    render json: Note.find_by(date: params[:date])
  end

  def create
    render json: Note.create(date: params[:note][:date], message: params[:note][:message], user_id: params[:user_id])
    #render json: Note.create(note_params)
  end

  private

  def note_params
    params.require(:note).permit(:date, :message)
  end
end
