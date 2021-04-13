class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :comment
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
