class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :owner
      t.string :name
      t.string :description
      t.string :full_name
      t.string :repo_url
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
