cask 'liberica-jdk11' do
  version '11.0.3,12'
  sha256 '602ba0f26dc2b40604fa7bf0af8ad31e62ea4dfebd2697526ef47a1d25f14cd3'

  url "https://download.bell-sw.com/java/11.0.3/bellsoft-jdk11.0.3-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.3-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.3'

end
