cask 'liberica-jdk12-lite' do
  version '12.0.2,10'
  sha256 '5095239188ee0c09a5c0824441fafad431006661b98e94a3cb2d3d69a58a302c'

  url "https://download.bell-sw.com/java/12.0.2/bellsoft-jdk12.0.2-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 12'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk12.0.2-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.12.0.2'

end
