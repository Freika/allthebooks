module BooksHelper
  def render_cover(book)
    if book.cover.present?
      image_tag(book.cover)
    else
      image_tag('empty_cover')
    end
  end
end
