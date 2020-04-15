cask 'liberica-jdk11-full' do
  version '11.0.7,10'
  sha256 '814060a3fc11f50eeb92aff5038f6d3a4d8f577c4e1b1085fe72c924b340b222'

  url "https://download.bell-sw.com/java/11.0.7%2B10/bellsoft-jdk11.0.7%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.7+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end
