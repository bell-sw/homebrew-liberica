cask 'liberica-jdk12' do
  version '12.0.1,12'
  sha256 '73cc929d8dd4a9137a89d50905be16a499c0006b792ec328a41aa0096e730517'

  url "https://download.bell-sw.com/java/12.0.1/bellsoft-jdk12.0.1-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 12'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk12.0.1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.12.0.1'

end
