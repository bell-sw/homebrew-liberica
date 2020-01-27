cask 'liberica-jre13-full' do
  version '13.0.2,9'
  sha256 '6311b59d65095d8dcef58bee97ad6b1b684980770b14e6b151c5618fd118af37'

  url "https://download.bell-sw.com/java/13.0.2%2B9/bellsoft-jre13.0.2%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre13.0.2+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre13-full'

end
