class CreateImportJobs < ActiveRecord::Migration
  def change
    create_table :import_jobs do |t|
      t.string :name
      t.string :customer
      t.string :filename
      t.integer :status
      t.integer :konv_id

      t.timestamps
    end
  end
end
