cask 'liberica-jdk15-lite' do
  version '15.0.0,36'
  sha256 'c62069faf4a024b45d007dd9c0cbaee6437aec95ca661a464ea4db99479b25c3'

  url "https://download.bell-sw.com/java/15%2B36/bellsoft-jdk15%2B36-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15+36-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15-lite'

end
