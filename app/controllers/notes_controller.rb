class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    @note.save
    render json: @note
  end

  def show
  end

  def update
    @note.update
      render json: @note
  end

  def destroy
    if @note.destroy
      render json: @note
    end
  end

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :body)
  end

end
