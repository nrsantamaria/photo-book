class UpdateImages < ActiveRecord::Migration[5.1]
  def change
    change_table :images do |t|
      t.column :user_id, :integer
    end
  end
end
