cask 'liberica-jdk13' do
  version '13,33'
  sha256 '01afcbc10f86c8cf89d5a757d50237a80bdf3ce4e2e52f945ca24d8e46416679'

  url "https://download.bell-sw.com/java/13/bellsoft-jdk13-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.13'

end
