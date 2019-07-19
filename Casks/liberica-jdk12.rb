cask 'liberica-jdk12' do
  version '12.0.2,10'
  sha256 '34a360ba86a65efdebc3328a3f0d398c6de393c06da0d332f54167e5c3e20737'

  url "https://download.bell-sw.com/java/12.0.2/bellsoft-jdk12.0.2-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 12'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk12.0.2-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.12.0.2'

end
