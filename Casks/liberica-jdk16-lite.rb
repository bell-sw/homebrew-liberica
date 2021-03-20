cask 'liberica-jdk16-lite' do
  desc "100% open-source Java implementation"
  version '16,36'
  sha256 '565fcaca6f02e19f123856f12cc35107c5df76c3f517afc8a3e73cab4146a5d5'

  url "https://download.bell-sw.com/java/16%2B36/bellsoft-jdk16%2B36-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk16+36-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16-lite'

end

