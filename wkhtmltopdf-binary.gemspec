# coding: utf-8

Gem::Specification.new do |s|
  s.name = "wkhtmltopdf-binary-macos-stretch"
  s.version = "0.12.5"
  s.license = "Apache-2.0"
  s.author = "Zakir Durumeric"
  s.email = "zakird@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "Provides binaries (macos and stretch) for WKHTMLTOPDF project in an easily accessible package"
  s.files = Dir['bin/*']
  s.executables << "wkhtmltopdf"
  s.require_path = '.'

  s.add_development_dependency "minitest"
end
