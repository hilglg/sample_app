class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :Account
      t.string :Name
      t.string :Site
      t.string :AccountType
      t.string :MainPhone
      t.string :MainFax

      t.timestamps
    end
  end
end
