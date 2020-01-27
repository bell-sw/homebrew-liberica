cask 'liberica-jdk11-lite' do
  version '11.0.6,10'
  sha256 'fd942cf55ebd6239f73a211b85abb0b1f13409a6173cd353eee5b66105b24d93'

  url "https://download.bell-sw.com/java/11.0.6%2B10/bellsoft-jdk11.0.6%2B10-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.6+10-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end
