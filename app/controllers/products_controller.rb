class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :add_variant_to_product, only: :update
  before_action :add_options_to_variant, only: :update

  def index
    @products ||= Product.all.most_recent
  end
  
  def new
    @product = Product.new
  end

  def create
    if current_user.admin?
      @product = current_user.products.new(product_params)

      @product.save ? ( redirect_to products_path, notice: "Product created." )
                    : ( flash.now[:alert] = "Unable to create the product!" )

    else
      redirect_to root_path, alert: "Access denied!"
    end
  end

  def show
  end

  def edit
    @product.variants.all
    @supported_option_types = @product.product_type&.product_options.collect(&:supported_option_type)
    @options = Option.where(option_type: @supported_option_types)
  end

  def update
    @product.update(product_params) ? (render 'show') : (render 'edit')
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product deleted!"
  end
  
  private

  def product_params
    params.require(:product).permit(:title, :description, :sku, :product_type_id, 
                                    variants_attributes: [:id, :sku, :price, :quantity])
  end

  def set_product
    @product = Product.find(params.dig(:id))
  end

  def add_variant_to_product
    @variant = {}
    @variant.merge!(product_params.dig(:variants_attributes, '0'))
  end

  def add_options_to_variant
    @options = params.dig(:product, :options)
  end

end