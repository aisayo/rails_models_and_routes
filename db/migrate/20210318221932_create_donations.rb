class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.float :amount
      t.datetime :date
      t.belongs_to :organization
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
