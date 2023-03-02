class CreateActeurs < ActiveRecord::Migration[7.0]
  def change
    create_table :acteurs do |t|
      t.string :Nom
      t.text :Photo
      t.date :Anniversaire
      t.text :Biographie
      t.text :Filmographie

      t.timestamps
    end
  end
end
