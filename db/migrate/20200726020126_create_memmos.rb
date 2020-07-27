class CreateMemmos < ActiveRecord::Migration[5.2]
  def change
    create_table :memmos do |t|
      t.text :text
      t.timestamps
    end
  end
end
