cask 'liberica-jre8-full' do
  version '1.8.0,252'
  sha256 '424ac6429525e2f9f8e2bfd06052d98a273bc89fcc8ea10f56eda6f1071ca8ad'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jre8u252%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u252+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end
