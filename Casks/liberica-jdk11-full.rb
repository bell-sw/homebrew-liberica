cask 'liberica-jdk11-full' do
  desc "100% open-source Java implementation"
  version '11.0.10,9'
  sha256 '6ea684ba956cd06d281cf465845875e16e724e630b3738ca6cbd0484bede4415'

  url "https://download.bell-sw.com/java/11.0.10%2B9/bellsoft-jdk11.0.10%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.10+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

