class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
