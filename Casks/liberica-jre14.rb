cask 'liberica-jre14' do
    version '14.0.2,13'
    sha256 '994f81de22ce8f2aae7e8be6a81e4762bbca3c027f37dbb668d654517a70e3c7'
  
    url "https://download.bell-sw.com/java/14.0.2%2B13/bellsoft-jre14.0.2%2B13-macos-amd64.pkg"
    name 'BellSoft Liberica JRE 14'
    homepage 'https://bell-sw.com'
  
    pkg 'bellsoft-jre14.0.2+13-macos-amd64.pkg'
  
    uninstall pkgutil: 'com.bell-sw.liberica.jre14'
  
  end
  