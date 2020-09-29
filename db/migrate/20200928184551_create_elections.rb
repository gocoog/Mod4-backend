class CreateElections < ActiveRecord::Migration[6.0]
  def change
    create_table :elections do |t|
      t.string :election_name
      t.string :election_type
      t.string :img_url
      t.text :election_desc
      t.date :election_end_date
      t.integer :number_of_votes
      t.references :user

      t.timestamps
    end
  end
end
