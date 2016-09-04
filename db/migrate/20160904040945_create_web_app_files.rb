class CreateWebAppFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :web_app_files do |t|
      t.attachment :file
      t.references :web_app_key, foreign_key: true, on_delete: :cascade, on_update: :cascade

      t.timestamps
    end
  end
end
