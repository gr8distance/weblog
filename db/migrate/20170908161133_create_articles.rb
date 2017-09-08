class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :auther, null: false
      t.date :public_date, null: false
      t.boolean :public, null: false, default: true

      t.timestamps
    end
  end
end
