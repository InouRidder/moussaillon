class ScenesController < ApplicationController

  def show
    @scene = Scene.find(params[:id])

    # SCENE SHOW PAGE SLIDING

    array_all_id = Scene.all.pluck(:id)
    current_id = @scene.id
    index_current_id = array_all_id.index(current_id)

    next_id = array_all_id[index_current_id + 1]
    previous_id = array_all_id[index_current_id - 1]

    # ROTATION LOGIC

    case current_id
    when array_all_id.last
      next_id = array_all_id.first
    when array_all_id.first
      previous_id = array_all_id.last
    end


    @next_scene = Scene.find(next_id)
    @previous_scene = Scene.find(previous_id)
  end

end
