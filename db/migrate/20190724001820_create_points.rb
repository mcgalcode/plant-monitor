class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.json :values

      t.timestamps
    end
  end
end
