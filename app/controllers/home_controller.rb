class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]
  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Job.title 
    @corp_power = Faker::Company.bs.titleize
    
    @rand_num = rand(1..1000)
    @set_number = rand(1..3)
    if (@set_number) == 1
      @set = "set1"
    elsif (@set_number) == 2
      @set = "set2"
    else
      @set = "set3"
    end

    @bg = rand(1..2)
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(slug: @rand_num, size: "250x250", format: "png", set: @set, bgset: @background)
  end

  def index
  end

  def team
  end
end
