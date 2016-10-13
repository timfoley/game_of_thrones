class CharactersController < ApplicationController
  # replace Character
  # replace character
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)

    redirect_to character_path(@character)
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to characters_path
  end

  # strong params
  private
  def character_params
    params.require(:character).permit(:name, :img_url, :quote, :bio, :house)
  end


end
