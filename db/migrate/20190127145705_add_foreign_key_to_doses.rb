class AddForeignKeyToDoses < ActiveRecord::Migration[5.2]
  def change
    t.references :cocktails, foreign_key: true

  end
end
