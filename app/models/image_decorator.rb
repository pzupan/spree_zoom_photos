Image.class_eval do
   
   # Add an extra large (xl) size to use for zooming.
   self.attachment_definitions[:attachment][:styles].merge!(:xl => '1200x1200>' )
        
end