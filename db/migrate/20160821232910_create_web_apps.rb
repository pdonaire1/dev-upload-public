class CreateWebApps < ActiveRecord::Migration[5.0]
  def change
    create_table :web_apps do |t|
      t.string :page, :limit => 250
      t.string :description, :limit => 250
      t.boolean :is_active, default: false, null: false
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
