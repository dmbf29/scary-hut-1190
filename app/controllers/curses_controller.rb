class CursesController < ApplicationController
  def new
    # BOTH of these are to build the form
    @curse = Curse.new
    @monster = Monster.find(params[:monster_id])
    # @powers = Power.order(name: :asc)
    # @powers = @monster.powers
    @powers = Power.where.not(id: @monster.powers).order(name: :asc)
  end

  def create
    @monster = Monster.find(params[:monster_id])
    @curse = Curse.new(curse_params)
    @curse.monster = @monster
    if @curse.save
      redirect_to haunted_house_path(@monster.haunted_house)
    else
      @powers = Power.where.not(id: @monster.powers).order(name: :asc)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def curse_params
    params.require(:curse).permit(:power_id)
  end
end
