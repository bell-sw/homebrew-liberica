cask 'liberica-jre15-full' do
  version '15.0.1,9'
  sha256 '0610f44f0393cae7bea2111f861a6b28a8c209da79a286139bdf66a7fa8ef90f'

  url "https://download.bell-sw.com/java/15.0.1%2B9/bellsoft-jre15.0.1%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre15.0.1+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre15-full'

end

