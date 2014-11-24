class SpellsheetsController < ApplicationController
  before_action :set_spellsheet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @spellsheets = Spellsheet.all
    respond_with(@spellsheets)
  end

  def show
    respond_with(@spellsheet)
  end

  def new
    @spellsheet = Spellsheet.new
    respond_with(@spellsheet)
  end

  def edit
  end

  def create
    @spellsheet = Spellsheet.new(spellsheet_params)
    @spellsheet.save
    respond_with(@spellsheet)
  end

  def update
    @spellsheet.update(spellsheet_params)
    respond_with(@spellsheet)
  end

  def destroy
    @spellsheet.destroy
    respond_with(@spellsheet)
  end

  private
    def set_spellsheet
      @spellsheet = Spellsheet.find(params[:id])
    end

    def spellsheet_params
      params.require(:spellsheet).permit(:character_id)
    end
end
