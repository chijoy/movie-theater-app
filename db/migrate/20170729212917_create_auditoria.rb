class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.integer :movietheater_id

      t.timestamps null: false
    end
  end
end
