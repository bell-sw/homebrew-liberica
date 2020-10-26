cask 'liberica-jdk11-full' do
  version '11.0.9,11'
  sha256 '1d8c95453e6583b5058d18e2cc2b1b72b45edf1aaf3e0b9251dfbc7685b1c197'

  url "https://download.bell-sw.com/java/11.0.9%2B11/bellsoft-jdk11.0.9%2B11-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.9+11-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end
