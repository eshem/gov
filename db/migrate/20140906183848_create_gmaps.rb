class CreateGmaps < ActiveRecord::Migration
  def change
    create_table :gmaps do |t|

      t.timestamps
    end
  end
end
