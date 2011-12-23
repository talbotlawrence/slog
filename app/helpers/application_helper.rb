module ApplicationHelper
  def render_datetime(time)
  h(time.strftime("%A, %B, %d, %Y %I:%M%p"))
  end
end
