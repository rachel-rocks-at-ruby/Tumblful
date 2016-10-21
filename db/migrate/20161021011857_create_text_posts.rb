class CreateTextPosts < ActiveRecord::Migration
  def change
    create_table :text_posts do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
