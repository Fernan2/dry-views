class NewDecorator < ApplicationDecorator
  delegate_all

  def custom_html(position: 0)
    h.tag.p do
      intro_text.html_safe
    end
  end
end
