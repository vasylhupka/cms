class CreateCategoryArticles < ActiveRecord::Migration
  def change
    create_table :category_articles do |t|
      t.integer  :category_id, index: true
      t.integer  :article_id, index: true
      t.timestamps null: false
    end
  end
end
