cask 'liberica-jre14' do
    version '14.0.1,8'
    sha256 'aed61352c548ff00635a7a98e5f958af5697d03640a8997a6550a83010fe0157'
  
    url "https://download.bell-sw.com/java/14.0.1%2B8/bellsoft-jre14.0.1%2B8-macos-amd64.pkg"
    name 'BellSoft Liberica JRE 14'
    homepage 'https://bell-sw.com'
  
    pkg 'bellsoft-jre14.0.1+8-macos-amd64.pkg'
  
    uninstall pkgutil: 'com.bell-sw.liberica.jre14'
  
  end
  