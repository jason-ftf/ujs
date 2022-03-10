class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :quote
      t.datetime :release_date

      t.timestamps
    end
  end
end
