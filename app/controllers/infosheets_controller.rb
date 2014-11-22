class InfosheetsController < ApplicationController
  before_action :set_infosheet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @infosheets = Infosheet.all
    respond_with(@infosheets)
  end

  def show
    respond_with(@infosheet)
  end

  def new
    @infosheet = Infosheet.new
    respond_with(@infosheet)
  end

  def edit
  end

  def create
    @infosheet = Infosheet.new(infosheet_params)
    @infosheet.save
    respond_with(@infosheet)
  end

  def update
    @infosheet.update(infosheet_params)
    respond_with(@infosheet)
  end

  def destroy
    @infosheet.destroy
    respond_with(@infosheet)
  end

  private
    def set_infosheet
      @infosheet = Infosheet.find(params[:id])
    end

    def infosheet_params
      params[:infosheet]
    end
end
