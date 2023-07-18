class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :requirements
      t.integer :profit
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
