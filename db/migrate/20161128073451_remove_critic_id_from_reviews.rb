class RemoveCriticIdFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :critic_id, :integer
  end
end
