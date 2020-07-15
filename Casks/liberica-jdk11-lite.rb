cask 'liberica-jdk11-lite' do
  version '11.0.8,10'
  sha256 'f07477430ebe0f5c9fec0976a0da816660f7271c835bc40cfcceec2587011092'

  url "https://download.bell-sw.com/java/11.0.8%2B10/bellsoft-jdk11.0.8%2B10-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.8+10-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end
