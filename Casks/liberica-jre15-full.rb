cask 'liberica-jre15-full' do
    version '15.0.0,36'
    sha256 'a855367e6455af6df7bdd2a63c3b2d3fee4b5b156e5f0b4558c512b314c2d497'
  
    url "https://download.bell-sw.com/java/15%2B36/bellsoft-jre15%2B36-macos-amd64-full.pkg"
    name 'BellSoft Liberica JRE 15'
    homepage 'https://bell-sw.com'
  
    pkg 'bellsoft-jre15+36-macos-amd64-full.pkg'
  
    uninstall pkgutil: 'com.bell-sw.liberica.jre15-full'
  
  end
  