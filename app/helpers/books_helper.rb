module BooksHelper
  def render_cover(book)
    if book.cover.present?
      image_tag(book.cover, class: 'cover')
    else
      image_tag('empty_cover', class: 'cover')
    end
  end
end
