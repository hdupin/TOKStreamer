class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :title
      t.text :desc
      t.string :status
      t.string :session_id

      t.timestamps null: false
    end
  end
end
