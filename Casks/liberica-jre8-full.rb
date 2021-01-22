cask 'liberica-jre8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,282'
  sha256 '57038209edbd5c768fb18f37eafa456ebc18a9cdfd2e3206ca42e58e443c3ebd'

  url "https://download.bell-sw.com/java/8u282%2B8/bellsoft-jre8u282%2B8-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u282+8-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

