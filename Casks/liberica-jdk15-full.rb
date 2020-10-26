cask 'liberica-jdk15-full' do
  version '15.0.1,9'
  sha256 'd2918ea0dfdafe7c85c58c138e2464bd1452b0bea5757db17734ba2341ad62b1'

  url "https://download.bell-sw.com/java/15.0.1%2B9/bellsoft-jdk15.0.1%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15.0.1+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15-full'

end
