class NotesController < ApplicationController
  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save
    else
      render :new
    end
  end

  def show

  end

  def update
    if @note.update(note_params)
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
