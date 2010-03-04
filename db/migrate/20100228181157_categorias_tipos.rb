class CategoriasTipos < ActiveRecord::Migration
  def self.up
    create_table :categorias_tipos, :id => false, :force => true do |t|
      t.integer :categoria_id, :null => false
      t.integer :tipo_id,      :null => false
    end
  end

  def self.down
    drop_table :categorias_tipos
  end
end
