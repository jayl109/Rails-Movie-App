class CreateCriticsViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :critics_viewers, id:false do |t|
    	t.belongs_to :viewer, index: true
        t.belongs_to :critic, index: true
    end
  end
end
