class CreateOperaciones < ActiveRecord::Migration
  def self.up
    create_table :operaciones do |t|
      t.string :op_nombre
      t.timestamps
    end

  end

  def self.down
    drop_table :operaciones
  end
end
