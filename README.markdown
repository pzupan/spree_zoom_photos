# Zoom Photos #
This gem gives lightbox and zoom functionality to your photos in Spree versions 0.6 and higher.  It's based on Eliot Sykes' zoom_photos for prior versions Spree.

### Install ###

gem 'spree_zoom_photos', :git => "git@github.com:pzupan/spree_zoom_photos.git"

Copy all the public folder assets to your app's public folder.

rake zoom_photos

### Image sizes ###
The lightbox uses the existing large image size of 600x600.

For the zoom, it uses a new extra large image size of 1200x1200
(see zoom_photos_extension.rb).  This image size will be generated when you
upload an image in Spree.  To take advantage of this with existing product
images you'll need to generate the extra large size.  

### Jquery plugins ###
The lightbox is done with the fancybox jquery plugin.  

[Demos of Fancy box](http://fancybox.net/example)

The zoom is done with [MagicZoom](http://www.magictoolbox.com/magiczoom/).  If you
want to use zoom you'll want to get a license from MagicToolbox and put the javascript and css
files into your app, the files are *not* included in this extension. 

[Demos of MagicZoom](http://www.magictoolbox.com/magiczoom_examples/).

The extension has a zoomphotos-custom.css file that you may want change or override in
your own app to customise the styling.

Contributions, bug reports, feature requests welcome.