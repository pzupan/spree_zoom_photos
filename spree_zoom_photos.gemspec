Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_zoom_photos'
  s.version     = '2.0'
  s.summary     = 'Lightbox and zoom functionality for your photos in spree.'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Paul Zupan'
  s.email             = 'pzupan@gmail.com'
  s.homepage          = 'http://github.com/pzupan/spree_zoom_photo'

  s.files        = Dir['CHANGELOG', 'README.markdown', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency('spree_core', '>= 0.60.0')
end