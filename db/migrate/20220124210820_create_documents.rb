class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :body
      t.timestamps

      # Relations
      t.belongs_to :folder
    end
  end
end
