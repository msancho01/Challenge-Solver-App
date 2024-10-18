class ChallengesController < ApplicationController
  def index
  end

  def boxes_and_balls
    return unless params[:boxes_number]
    @visual_answer = params[:visual_answer] == 'true'
    @boxes_number = params[:boxes_number].to_i
    if @boxes_number >= 1
      @walks, @steps = calculate_min_walks(@boxes_number)
    else
      flash[:error] = "The number of boxes must be greater than 0."
      return render :boxes_and_balls
    end


  end

  private

  def calculate_min_walks(boxes_number)
    return boxes_number if boxes_number == 1
    boxes = (1..boxes_number).to_a
    groups_info = Challenges::GroupConsecutiveNumbers.call(boxes_number)
    walks = groups_info[:groups].size
    steps = []

    if @visual_answer
      visual_walks = 0
      balls_per_box = groups_info[:group_size] # Get the maximum number of balls you can put initially into the boxes

      # # While there are boxes that still need to be filled
      steps << { boxes: boxes.dup, balls_per_box: 0, walk: visual_walks }
      while boxes.any? { |box| box > 0 }
        # Reduce the capacity of the boxes that can hold balls_per_box
        boxes.map! { |box| box >= balls_per_box ? box - balls_per_box : box }
        visual_walks += 1
        steps << { boxes: boxes.dup, balls_per_box: balls_per_box, walk: visual_walks }
        balls_per_box > 2 ? balls_per_box -= 2 : balls_per_box = 1
      end
    end

    return walks, steps
  end

  def get_balls_per_box_per_box(boxes)
    capacities = Hash.new

    boxes.each { |box| capacities[box] = 0 if box > 0 }

    boxes.each do |box|
      capacities.keys.each do |key|
        capacities[key] = capacities[key] + 1 if key <= box
      end
    end
    p "capacities = #{capacities}"
    capacities.keys.count > 1 ? capacities.keys[1] : capacities.keys[0]
  end
end
