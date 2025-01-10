module ApplicationHelper
  def hide_footer!
    @hide_footer = true
  end

  def footer_hidden?
    @hide_footer == true
  end
end
