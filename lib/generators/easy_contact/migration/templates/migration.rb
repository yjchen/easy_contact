class CreateEasyContactEntries < ActiveRecord::Migration
  def change
    create_table :easy_contact_entries do |t|
      t.string :type
      t.string :label
      t.text :content
      t.string :addition
      t.string :extra
      t.string :country
      t.string :locale
      t.boolean :primary
      t.references :contactable

      t.timestamps
    end
    add_index :easy_contact_entries, :contactable_id
  end
end
