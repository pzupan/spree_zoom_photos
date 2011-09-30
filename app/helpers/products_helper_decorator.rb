ProductsHelper.class_eval do
  def image_controls
    @image_controls ||= ZoomPhotos::ImageControls.new(@product)
  end

  # image_style will typically be one of :mini, :small, :product, :large, :original
  def product_image_path(product, image_style=:original)
    if product.images.empty?
      image_path "noimage/#{image_style.to_s}.jpg"
    else
      image_path product.images.first.attachment.url(image_style)  
    end
  end
  
  # Override this method if you want to set customize the zoom options.
  # Available options: http://www.magictoolbox.com/magiczoom_integration/
  def zoom_options
    "zoom-distance:20px; zoom-width:350px; zoom-height:350px;
    loading-msg:#{t('zoom_photos.loading')}"
  end
end
