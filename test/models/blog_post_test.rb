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
require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
