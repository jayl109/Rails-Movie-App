class AddViewerIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :viewer_id, :integer
  end
end
