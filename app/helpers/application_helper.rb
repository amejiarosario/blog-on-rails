module ApplicationHelper
  def active?(title, element)
    if title.include? element
      "active"
    else
      ""
    end
  end
end
