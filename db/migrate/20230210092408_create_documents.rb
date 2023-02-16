class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.string :doc_type
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
