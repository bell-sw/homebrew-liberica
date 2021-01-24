cask 'liberica-jdk8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,282'
  sha256 '20877ed4151526a128f3601a791d914c000d4ecec3985940d868c557f091015a'

  url "https://download.bell-sw.com/java/8u282%2B8/bellsoft-jdk8u282%2B8-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u282+8-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

