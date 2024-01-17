class CreateFingernumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :fingernumbers do |t|
      t.string :fingerprint_id

      t.timestamps
    end
  end
end
