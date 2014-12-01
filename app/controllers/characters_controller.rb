class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @characters = Character.all
    respond_with(@characters)
  end

  def show
    respond_with(@character)
  end

  def new
    @character = Character.new
    respond_with(@character)
  end

  def edit
    @character = Character.find(params[:id])
  end

  def play
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    @character.save
    respond_with(@character)
  end

  def update
    @character.update(character_params)

    respond_to do |format|
      if @character.save

        format.html { 
          flash[:success] = 'saved successfully'
          redirect_to products_url
        }
        format.js
      else
        render :new
        format.html { render :new }
        format.js   { render :js=>'alert("ajax error");' }
      end
    end

    respond_with(@character)
  end

  def destroy
    @character.destroy
    respond_with(@character)
  end

  private
    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit!
    end
end
