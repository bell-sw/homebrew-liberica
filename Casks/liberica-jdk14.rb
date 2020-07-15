cask 'liberica-jdk14' do
  version '14.0.2,13'
  sha256 '16d059d14dd29939ccae06b371b06bdaf584f5b7919945f9134be9a4eb7b91ab'

  url "https://download.bell-sw.com/java/14.0.2%2B13/bellsoft-jdk14.0.2%2B13-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14.0.2+13-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14'

end
