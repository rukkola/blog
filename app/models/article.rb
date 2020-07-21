class Article < ApplicationRecord
  validates :title, presence: true
  validates :title, presence: true
  has_many :comments

  def subject
    title
  end
end
