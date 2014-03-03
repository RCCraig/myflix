module ApplicationHelper

  def options_for_video_reviews(selected=nil)
    options_for_select((1..5).map {|number| [pluralize(number, "Star"), number]}, selected)
  end 

  def convert_flash(treatment)
    return "danger" if treatment == :error
    return "success" if treatment == :notice
    return treatment
  end
end
