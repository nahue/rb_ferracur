class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
      t.references  :categoria
      t.references  :operacion
      t.string   :modelo
      t.text     :detalle
      t.integer  :precio
      t.string   :imagen
      t.integer  :habilitado      
      t.string   :imagen_file_name
      t.string   :imagen_content_type
      t.integer  :imagen_file_size
      t.datetime :imagen_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :productos
  end
end
