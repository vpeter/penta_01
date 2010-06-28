# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def link_with_icon(title, icon, link, options = {})
    "<span class='icon'>" + image_tag(icon) + link_to(title, link, options) + "</span>"
  end

end
