class CreateXrefs < ActiveRecord::Migration[5.2]
  def change
    create_table :xrefs do |t|
      t.references :movie, foreign_key: true
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
