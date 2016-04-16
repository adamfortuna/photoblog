class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  has_many :pages

  validates :identifier, uniqueness: true

  def page_for path
    pages.find_by(permalink: path)
  end
end
