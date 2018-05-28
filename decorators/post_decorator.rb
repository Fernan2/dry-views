class PostDecorator < ApplicationDecorator
  delegate_all

  def custom_html(position: )
    return custom_html_first if position == 1
    (avatar(article.author, :thumbnail) + link_on_span).html_safe
  end

  def custom_html_first
    h.tag.h3(class: 'rnk-Section_Title') do
      h.link_to title, self, class: 'core-Link'
    end
  end

  private

  def link_on_span
    h.tag.span do
      h.link_to author.nick, author
    end
  end
end
