class CreateSubmitted < ActiveRecord::Migration[5.2]
  def up
    create_table :submissions do |t|
      t.string :income
      t.string :state
      t.string :filing_status
    end
  end

  def down
    drop_table :submissions
  end
end
