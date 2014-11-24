class SpellsController < ApplicationController
  before_action :set_spell, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @spells = Spell.all
    respond_with(@spells)
  end

  def show
    respond_with(@spell)
  end

  def new
    @spell = Spell.new
    respond_with(@spell)
  end

  def edit
  end

  def create
    @spell = Spell.new(spell_params)
    @spell.save
    respond_with(@spell)
  end

  def update
    @spell.update(spell_params)
    respond_with(@spell)
  end

  def destroy
    @spell.destroy
    respond_with(@spell)
  end

  private
    def set_spell
      @spell = Spell.find(params[:id])
    end

    def spell_params
      params.require(:spell).permit!
    end
end
