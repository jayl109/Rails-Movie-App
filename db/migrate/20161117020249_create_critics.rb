class CreateCritics < ActiveRecord::Migration[5.0]
  def change
    create_table :critics do |t|
      t.string :name
      t.string :bio
      t.timestamps
    end
  end
end
