cask 'liberica-jdk12-lite' do
  version '12.0.1,12'
  sha256 '37986fddfa840fa095aa94c7f697c2a8d24c4d79f85d7d1fb0029e89c9f483e8'

  url "https://download.bell-sw.com/java/12.0.1/bellsoft-jdk12.0.1-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 12'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk12.0.1-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.12.0.1'

end
