class ToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :image, :string
    rename_column :posts, :auther, :author
  end
end
