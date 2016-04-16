class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:history, :scoped], scope: :blog, slug_column: :permalink

  belongs_to :blog
  belongs_to :template

  before_update :refresh_cached_content, if: :content_changed?

  def refresh_cached_content
    self.cached_content = content
  end

end
