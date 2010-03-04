class ProductosController < ApplicationController
  def index
    @productos = Producto.paginate :page => params[:pagina]
  end
  def new
    @producto = Producto.new
  end
  def create
    @producto = Producto.new(params[:producto])
    if @producto.save
      flash[:success] = "Producto creado correctamente"
      redirect_to productos_path
    end
  end

  def edit
    @producto = Producto.find(params[:id])  
  end

  def destroy
    @producto = Producto.find(params[:id])
    if @producto.destroy
      flash[:success] = "Producto eliminado correctamente"
      redirect_to productos_path
    end
  end
end
