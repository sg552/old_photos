class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :location
      t.string :name
      t.string :date

      t.timestamps
    end
  end
end
