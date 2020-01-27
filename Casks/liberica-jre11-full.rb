cask 'liberica-jre11-full' do
  version '11.0.6,10'
  sha256 'b7013006812e04256e37b136f6398c75f6bb87d738da616d0eb0d86b4b776627'

  url "https://download.bell-sw.com/java/11.0.6%2B10/bellsoft-jre11.0.6%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.6+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end
