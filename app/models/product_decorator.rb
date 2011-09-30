Product.class_eval do

  def has_image_without_style?(style)
    return true if contains_image_without_style?(images, style)
    if !variants.blank?
      variants.each do |variant|
        return true if contains_image_without_style?(variant.images, style)
      end
    end
    return false
  end
  
  private
  
  def contains_image_without_style?(images, style)
    return false if images.blank?
    images.each do |image|
      path = image.attachment.path(style)
      return true if !File.exists?(path)
    end
    return false
  end
  
end