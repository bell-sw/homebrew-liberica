cask 'liberica-jre11' do
  version '11.0.5,11'
  sha256 '7a9e7017dbe059c2416fca8b77d6fff965fd8e80aa65fe899752a07c1c993014'

  url "https://download.bell-sw.com/java/11.0.5%2B11/bellsoft-jre11.0.5%2B11-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.5+11-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre.11.0.5'

end
