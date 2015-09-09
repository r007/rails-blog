class AddImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image_id, :string
    add_column :posts, :image_content_type, :string
  end
end
