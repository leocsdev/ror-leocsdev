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
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 5 }
end
