class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment, null: false
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
