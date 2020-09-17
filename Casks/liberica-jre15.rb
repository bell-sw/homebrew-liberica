cask 'liberica-jre15' do
    version '15.0.0,36'
    sha256 '4fab12ecf983ffa7d1eecfbd2d7199894a618b4da98573e44e15a0dc4a9ef5df'
  
    url "https://download.bell-sw.com/java/15%2B36/bellsoft-jre15%2B36-macos-amd64.pkg"
    name 'BellSoft Liberica JRE 15'
    homepage 'https://bell-sw.com'
  
    pkg 'bellsoft-jre15+36-macos-amd64.pkg'
  
    uninstall pkgutil: 'com.bell-sw.liberica.jre15'
  
  end
  