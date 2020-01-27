cask 'liberica-jdk13-lite' do
  version '13.0.2,9'
  sha256 '39b9884cf0ace86e67bcbe936edd51cd077e5423a50859a489aec9ae739896cd'

  url "https://download.bell-sw.com/java/13.0.2%2B9/bellsoft-jdk13.0.2%2B9-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13.0.2+9-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk13-lite'

end
