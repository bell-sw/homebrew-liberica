cask 'liberica-jdk11-lite' do
  version '11.0.3,12'
  sha256 '735897fd93f0360556d3d626c26e7c48c72c3c98a7ac2cdcbc27a06fd342c2f2'

  url "https://download.bell-sw.com/java/11.0.3/bellsoft-jdk11.0.3-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.3-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.3'

end
