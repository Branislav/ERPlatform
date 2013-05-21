class ChangePibFormatFromStringToDecimal < ActiveRecord::Migration
  def self.up
    change_column :kompanijas, :pib, :string
  end

  def self.down
    change_column :kompanijas, :pib, :decimal
  end
end
