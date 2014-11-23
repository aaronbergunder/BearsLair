class SkillsheetsController < ApplicationController
  before_action :set_skillsheet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @skillsheets = Skillsheet.all
    respond_with(@skillsheets)
  end

  def show
    respond_with(@skillsheet)
  end

  def new
    @skillsheet = Skillsheet.new
    respond_with(@skillsheet)
  end

  def edit
  end

  def create
    @skillsheet = Skillsheet.new(skillsheet_params)
    @skillsheet.save
    respond_with(@skillsheet)
  end

  def update
    @skillsheet.update(skillsheet_params)
    respond_with(@skillsheet)
  end

  def destroy
    @skillsheet.destroy
    respond_with(@skillsheet)
  end

  private
    def set_skillsheet
      @skillsheet = Skillsheet.find(params[:id])
    end

    def skillsheet_params
      params.require(:skillsheet).permit(:character_id)
    end
end
