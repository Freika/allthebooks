require "babosa"

class Book < ActiveRecord::Base
  include TheComments::Commentable
  extend FriendlyId
  friendly_id :title, use: :slugged

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize(transliterations: :russian).to_s
  end

  def commentable_title
    "Undefined Book Title"
  end

  def commentable_url
    "#"
  end

  def commentable_state
    "published"
  end
end
