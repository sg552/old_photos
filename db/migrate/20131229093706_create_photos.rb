class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :organization_id
      t.integer :user_id

      t.timestamps
    end
  end
end
