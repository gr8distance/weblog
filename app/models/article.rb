class Article < ApplicationRecord
  validates_presence_of :title, :body, :auther, :public_date, :public
end
