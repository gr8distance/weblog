require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_presence_of(:body)
  should validate_presence_of(:auther)
  should validate_presence_of(:public_date)
  should validate_presence_of(:public)
end
