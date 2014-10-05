module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    title = 'Simple Scrum Online'
    title << " | #{@title}" if @title
    title
  end
end
