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

class Post < ApplicationRecord
  validates_presence_of :title, :body, :auther
end
