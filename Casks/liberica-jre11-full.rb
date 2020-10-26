cask 'liberica-jre11-full' do
  version '11.0.9,11'
  sha256 'd4271304753dbb1590ee5d1d222bd68187855d295b90e606c067505d47a363f5'

  url "https://download.bell-sw.com/java/11.0.9%2B11/bellsoft-jre11.0.9%2B11-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.9+11-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end
