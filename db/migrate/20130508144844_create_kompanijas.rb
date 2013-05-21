class CreateKompanijas < ActiveRecord::Migration
  def change
    create_table :kompanijas do |t|
      t.string :name
      t.string :pib
      t.text :address
      t.string :lc
      t.datetime :dateBegin
      t.datetime :dateEnd
      t.text :comment

      t.timestamps
    end
  end
end
