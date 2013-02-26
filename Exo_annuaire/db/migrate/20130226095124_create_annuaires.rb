class CreateAnnuaires < ActiveRecord::Migration
  def change
    create_table :annuaires do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
