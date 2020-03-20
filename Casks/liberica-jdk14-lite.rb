cask 'liberica-jdk14-lite' do
  version '14,36'
  sha256 '40aaf05a1c1d190f5d63417b1ae5c0da03e244b12e450b58f0c62e0c9b3d6997'

  url "https://download.bell-sw.com/java/14%2B36/bellsoft-jdk14%2B36-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14+36-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14-lite'

end
