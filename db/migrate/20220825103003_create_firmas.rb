class CreateFirmas < ActiveRecord::Migration[7.0]
  def change
    create_table :firmas do |t|
      t.string :nombre
      t.string :saludo

      t.timestamps
    end
  end
end
