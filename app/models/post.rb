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
  mount_uploader :image, ImageUploader
  validates_presence_of :title, :body, :author

  scope(:recommend, lambda do
          order(updated_at: :desc).limit(6)
        end)
end
