cask 'liberica-jre11' do
  version '11.0.9,11'
  sha256 'a175fb7528e665c485dbc7787fd0b3732dc394098b0f34effe15c4d4ddfb4e40'

  url "https://download.bell-sw.com/java/11.0.9%2B11/bellsoft-jre11.0.9%2B11-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.9+11-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end
