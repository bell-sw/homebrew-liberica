cask 'liberica-jdk8' do
  version '1.8.0,265'
  sha256 'f6f4e5d29caa4ff135af2d3b18235e3d5676bd21edb0ddfb24f82082a2104181'

  url "https://download.bell-sw.com/java/8u265%2B1/bellsoft-jdk8u265%2B1-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u265+1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end
