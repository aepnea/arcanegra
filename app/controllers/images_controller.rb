class ImagesController < ApplicationController
  before_action :authenticate_admin!
  #before_action :authenticate_owner!
  before_action :authenticate_product!
  def new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to @image.product, notice: "Se guardo la imagen"
    else
      redirect_to @product, notice: "No se subio nada"
    end
  end

  def destroy
    @image.destroy
	redirect_to @index
  end


  private
    def image_params
      params.require(:image).permit(:product_id, :archivo)
    end
    def authenticate_product!
      @product = Product.find(params[:image][:product_id])
      if @product.nil?
        redirect_to root_path, notice: "no puedes editar un producto ageno"
        return
      end
    end
end
=begin
metodo para corroborar que el que intenta hacer unaccion sea el creador del producto, en este caso siempre es el admin asi que no corre
def authenticate_owner!
@product = Product.find(params[:image][:product_id])
if !@product.nil? || @product.user != current_user
redirect_to root_path, notice: "no puedes editar un producto ageno"
return
end
end
=end
