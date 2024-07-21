# == Schema Information
#
# Table name: blog_posts
#
#  id          :bigint           not null, primary key
#  body        :text
#  description :string
#  image       :string
#  published   :boolean          default(FALSE)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class BlogPost < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 256 }
  validates :description, presence: true, length: { minimum: 5, maximum: 256 }
  validates :body, presence: true, length: { minimum: 5 }

  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }
  scope :latest, -> { order(updated_at: :desc) }
end
