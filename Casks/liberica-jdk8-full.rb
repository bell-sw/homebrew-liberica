cask 'liberica-jdk8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,275'
  sha256 '5d16d1ed9812499af483cb0e73d86f1088b4fe05aec56040d426f6ceb5935e5a'

  url "https://download.bell-sw.com/java/8u275%2B1/bellsoft-jdk8u275%2B1-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u275+1-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

