cask 'liberica-jdk16' do
  desc "100% open-source Java implementation"
  version '16,36'
  sha256 '2adec2744497689476525798146fe62cddd8d555e76f2e8ca144125042274450'

  url "https://download.bell-sw.com/java/16%2B36/bellsoft-jdk16%2B36-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk16+36-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16'

end

