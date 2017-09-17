# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  body       :text(65535)      not null
#  author     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_presence_of(:body)
  should validate_presence_of(:auther)
end
