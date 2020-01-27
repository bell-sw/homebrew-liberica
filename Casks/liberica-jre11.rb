cask 'liberica-jre11' do
  version '11.0.6,10'
  sha256 'b5e4ef4f85889e8378b4ac700513d7f089865df8d7908b807327a126f48dea2b'

  url "https://download.bell-sw.com/java/11.0.6%2B10/bellsoft-jre11.0.6%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.6+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end
