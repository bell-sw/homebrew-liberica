cask 'liberica-jdk11-lite' do
  version '11.0.4,10'
  sha256 '7a9aa0bd29a4ab47b688129389ae136ccaac91ce9c69df6352099007dcbcb64d'

  url "https://download.bell-sw.com/java/11.0.4/bellsoft-jdk11.0.4-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.4-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.4'

end
