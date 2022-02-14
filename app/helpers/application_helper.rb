module ApplicationHelper
  def capitalize(title)
    title.capitalize
  end

  def shorten_text(text)
    text.truncate(22)
  end

  def can_display_comments?(count)
    count.positive?
  end
end
