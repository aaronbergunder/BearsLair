class StatussheetsController < ApplicationController
  before_action :set_statussheet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @statussheets = Statussheet.all
    respond_with(@statussheets)
  end

  def show
    respond_with(@statussheet)
  end

  def new
    @statussheet = Statussheet.new
    respond_with(@statussheet)
  end

  def edit
  end

  def create
    @statussheet = Statussheet.new(statussheet_params)
    @statussheet.save
    respond_with(@statussheet)
  end

  def update
    @statussheet.update(statussheet_params)
    respond_with(@statussheet)
  end

  def destroy
    @statussheet.destroy
    respond_with(@statussheet)
  end

  private
    def set_statussheet
      @statussheet = Statussheet.find(params[:id])
    end

    def statussheet_params
      params.require(:statussheet).permit(:character_id, :maxhp, :curhp, :speed, :nonlthdmg, :initiative)
    end
end
