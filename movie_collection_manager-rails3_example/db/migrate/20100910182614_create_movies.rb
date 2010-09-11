class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.integer :run_time_in_minutes

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
