class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def new
    @sound = Sound.new
  end

  def create
    @sound = Sound.new(sound_params)
    if @sound.save
      redirect_to sounds_path, notice: 'Sound was successfully added.'
    else
      render :new
    end
  end

  private

  def sound_params
    params.require(:sound).permit(:name, :audio)
  end
end
