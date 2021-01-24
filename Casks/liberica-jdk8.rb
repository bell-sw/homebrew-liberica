cask 'liberica-jdk8' do
  desc "100% open-source Java implementation"
  version '1.8.0,282'
  sha256 'a19836de438a27e624bba6394967439974a3638a7055f495b7c7bcad3a06b589'

  url "https://download.bell-sw.com/java/8u282%2B8/bellsoft-jdk8u282%2B8-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u282+8-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

