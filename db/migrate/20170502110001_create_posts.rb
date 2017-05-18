class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      # t.저장할 내용의 형태 "변수이름"
      t.string :title
      t.text :content
      t.string :image

      t.timestamps null: false
    end
  end
end
