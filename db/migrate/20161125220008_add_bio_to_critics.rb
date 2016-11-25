class AddBioToCritics < ActiveRecord::Migration[5.0]
  def change
  	add_column :critics, :bio, :string
  end
end
