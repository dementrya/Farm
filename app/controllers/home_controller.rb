class HomeController < ApplicationController
  def index
    @params=params[:id]
    @x=params[:x]
    @y=params[:y]
    @pl_type=params[:pl_type]
  
    @plant = Plant.find(:all)
  
    if @params == "make_turn"
      @plant.each do |plant|
        plant.process_end=plant.process_end-10000000
        if plant.process_end < 0 
          plant.process_end = 0
        end
        plant.save
      end
    end

    @already=false
  
    if @params=="plant"
      @plant.each do |plant|
        if @x.to_s==plant.x.to_s
          if @y.to_s==plant.x.to_s
            @already=true
          end
        end
      end 
      if @already==false
        seed=plant.new()
        seed.pl_type=@pl_type
        seed.x=@x
        seed.y=@y
        seed.process_end=49000000
        seed.save
      end
    end

    if @params=="grab"
      @plant.each do |plant|
        if @x.to_s==plant.x.to_s
          if @y.to_s==plant.y.to_s
            if plant.process_end<10000000
              plant.destroy
            end
          end
        end
      end
    end

    @plant = Plant.find(:all)

  end
end
