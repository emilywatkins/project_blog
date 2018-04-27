class AddPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.column :title, :varchar
      t.column :body, :varchar

      t.timestamps
    end
  end
end
