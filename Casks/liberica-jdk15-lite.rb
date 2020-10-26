cask 'liberica-jdk15-lite' do
  version '15.0.1,9'
  sha256 '45d82c187ea354b0fb75067c6b52bbf4a72771e17961a002026f31171943ec79'

  url "https://download.bell-sw.com/java/15.0.1%2B9/bellsoft-jdk15.0.1%2B9-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15.0.1+9-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15-lite'

end
