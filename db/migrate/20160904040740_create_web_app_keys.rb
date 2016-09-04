class CreateWebAppKeys < ActiveRecord::Migration[5.0]
  def change
    create_table :web_app_keys do |t|
      t.string :api_key
      t.boolean :test
      t.references :web_app, foreign_key: true, on_delete: :cascade, on_update: :cascade

      t.timestamps
    end
  end
end
