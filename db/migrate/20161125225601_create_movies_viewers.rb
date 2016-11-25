class CreateMoviesViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :movies_viewers, id: false do |t|
    	t.belongs_to :viewer, index: true
        t.belongs_to :movie, index: true
    end
  end
end
