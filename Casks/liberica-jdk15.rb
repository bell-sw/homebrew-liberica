cask 'liberica-jdk15' do
  version '15.0.0,36'
  sha256 'cf5a2ba0425de4a230c73da7e35e5777aa3775767329009229b201447c919a7a'

  url "https://download.bell-sw.com/java/15%2B36/bellsoft-jdk15%2B36-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15+36-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15'

end
