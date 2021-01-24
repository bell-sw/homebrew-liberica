cask 'liberica-jdk15-lite' do
  desc "100% open-source Java implementation"
  version '15.0.2,10'
  sha256 '5ce05302412cf89f5e48c9d948001b08912839c5c6342a3b6bf91e2d6607a032'

  url "https://download.bell-sw.com/java/15.0.2%2B10/bellsoft-jdk15.0.2%2B10-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15.0.2+10-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15-lite'

end

