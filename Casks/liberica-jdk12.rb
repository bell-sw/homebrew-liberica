cask 'liberica-jdk12' do
  version '12.0.2,10'
  sha256 'cdc59c5db582023e24986a14d41962e8df457f7e215bee0f83f27f04fc8572d2'

  url "https://download.bell-sw.com/java/12.0.2/bellsoft-jdk12.0.2-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 12'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk12.0.2-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.12.0.2'

end
