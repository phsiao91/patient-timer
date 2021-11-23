class CreateProcedures < ActiveRecord::Migration[6.1]
  def change
    create_table :procedures do |t|
      t.string :action
      t.string :duration
      t.belongs_to :staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
