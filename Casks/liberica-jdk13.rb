cask 'liberica-jdk13' do
  version '13.0.2,9'
  sha256 'a3f57d7004c615fd9a7bd11ef8abc2a9846ec46e59ba26e6402dce354e64e1b0'

  url "https://download.bell-sw.com/java/13.0.2%2B9/bellsoft-jdk13.0.2%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13.0.2+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk13'

end
