class CreateTables < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.string :body
      t.belongs_to :user
    end
    create_table :contacts do |t|
      t.belongs_to :user
      t.integer :contact_id
    end
  end
end
