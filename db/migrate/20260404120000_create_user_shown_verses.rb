class CreateUserShownVerses < ActiveRecord::Migration[7.2]
  def change
    create_table :user_shown_verses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :verse, null: false, foreign_key: true

      t.timestamps
    end

    add_index :user_shown_verses, %i[user_id verse_id], unique: true, name: "index_user_shown_verses_on_user_id_and_verse_id"
  end
end
