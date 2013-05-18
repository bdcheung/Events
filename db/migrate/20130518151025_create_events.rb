class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :startdate
      t.datetime :enddate
      t.text :description
      t.string :agegroup
      t.string :location
      t.string :registration_url
      t.string :information_url

      t.timestamps
    end
  end
end
