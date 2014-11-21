class CharacterController < ApplicationController
  def new
    @character = Character.new
  end

  def create
  end

  def index
    @characters = Character.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
