cask 'liberica-jdk14-full' do
  version '14.0.2,13'
  sha256 'a10a27d10f84dd200442599c14cf085f36af301b98cca1f9e1ae19866edf199c'

  url "https://download.bell-sw.com/java/14.0.2%2B13/bellsoft-jdk14.0.2%2B13-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14.0.2+13-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14-full'

end
