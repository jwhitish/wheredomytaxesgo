class CreateModel < ActiveRecord::Migration[5.2]
  def change
  end

  def up
    create_table :models do |t|
      t.string :name
    end
  end

  def down
    drop_table :models
  end
end
