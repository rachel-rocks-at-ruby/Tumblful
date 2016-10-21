class CreateArticleLinks < ActiveRecord::Migration
  def change
    create_table :article_links do |t|
      t.string :title
      t.text :url

      t.timestamps
    end
  end
end
