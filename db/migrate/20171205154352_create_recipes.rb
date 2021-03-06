class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
