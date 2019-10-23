cask 'liberica-jdk13' do
  version '13.0.1,9'
  sha256 'c5c237b85dee64aae5c63bd57ea338858de564458517f7fba75b9613ee31e21c'

  url "https://download.bell-sw.com/java/13.0.1/bellsoft-jdk13.0.1-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13.0.1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.13.0.1'

end
