cask 'liberica-jdk8' do
  desc "100% open-source Java implementation"
  version '1.8.0,275'
  sha256 '430e2a82a3d6b0a5527886614768d90413d8e21e1e34cd914c8a1dea73ec77d9'

  url "https://download.bell-sw.com/java/8u275%2B1/bellsoft-jdk8u275%2B1-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u275+1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

