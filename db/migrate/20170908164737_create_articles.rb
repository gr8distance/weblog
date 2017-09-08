class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :auther
      t.date :public_date
      t.boolean :public

      t.timestamps
    end
  end
end
