class CreateImportDefs < ActiveRecord::Migration
  def change
    create_table :import_defs do |t|
      t.string :headline
      t.string :field

      t.timestamps
    end
  end
end
