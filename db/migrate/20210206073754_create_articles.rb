class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :authro_id
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :articles, :authro_id
  end
end
